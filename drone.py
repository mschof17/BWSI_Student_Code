from djitellopy import Tello
import time, cv2, math
from threading import Thread
import numpy as np
import scipy.linalg
from simple_pid import PID

arucoDict = cv2.aruco.Dictionary_get(cv2.aruco.DICT_5X5_50)
arucoParams = cv2.aruco.DetectorParameters_create()

tello_on = True

#HEIGHT, WIDTH = 720, 960

class Marker():
    def __init__(self, ID, corners):
        self.corners = corners
        self.ID = ID

        side_lengths = 0
        for i in range(4):
            corner1 = corners[i]
            corner2 = corners[(i+1)%4]
            side_lengths += ((corner1[0]-corner2[0])**2 + (corner1[1]-corner2[1])**2)**0.5
        self.side_length = side_lengths/4 #Average of all the side lengths
        
        #Calculate position of center
        #Numbers get too big for numpy's array. Need to convert to Python int object
        corners = [np.array([int(corner[0]), int(corner[1]), 1]) for corner in corners]

        D_13 = np.cross(corners[0], corners[2])
        D_24 = np.cross(corners[1], corners[3])

        center = np.cross(D_13, D_24)
        center_coords = center/center[2]
        center_coords = [round(center_coords[0], 2), round(center_coords[1], 2)]
        self.center = center_coords

        points_2D = np.array([(corners[i][0], corners[i][1]) for i in range(4)] + [tuple(center_coords)])
        points_3D = np.array([(0.0,15.0,15.0), (0.0,0.0,15.0), (0.0,0.0,0.0), (0.0,15.0,0.0), (0.0,7.5,7.5)])
        dist_coeffs = np.zeros((4,1))

        #Camera: [[f_x, 0, o_x], [0, f_y, o_y], [0, 0, 1]]
        #Found online: tellopilots.com/threads/camera-instrinsic-parameter.2620/
        #camera_matrix = np.array([[921.17, 0, 460], [0, 919.02, 351.24], [0, 0, 1]])
        camera_matrix = np.array([[920, 0, 480], [0, 920, 360], [0, 0, 1]])

        s, R_vec, T = cv2.solvePnP(points_3D, points_2D, camera_matrix, dist_coeffs, flags=0)

        #Transform rotation vector into rotation matrix
        R, _ = cv2.Rodrigues(R_vec)

        x_c = R[2] #Camera vectors as displayed in the world coordinate frame
        y_c = R[0]
        z_c = R[1]

        #Directly in front of the tag would have:
        # R: [[0, -1,  0],
        #     [0,  0, -1],
        #     [1,  0,  0]]
        #Because drone has x forward, y right, z down

        #At any point, regardless of orientation, z_c ~= [0, 0, 1] since we don't tilt the drone too much
        
        #x_c is in line x_w, let's use that
        x_x_c, y_x_c, z_x_c = x_c

        #-90 degrees -> target is perpendicular off drone's left side
        #+90 degrees -> target is perpendicular off drone's right side
        theta_c = math.atan2(y_x_c, x_x_c)*(180/math.pi)

        self.R = R
        self.T = T
        self.theta = theta_c

class Drone():
    def __init__(self, tello):
        self.tello = tello

    def adjust_pos(self, adjustment):
        '''Adjust position based on error'''
        #adjustment < 0: move drone right, adjustment > 0: move drone left
        radius = self.tello.T[2][0] #x_t
        yaw_rate = adjustment*100
        lateral_rate = -yaw_rate/radius
        self.tello.send_rc_control(lateral_rate, 0, 0, yaw_rate)
        time.sleep(0.5)
        self.tello.send_rc_control(0, 0, 0, 0)
        return self.create_marker()

    def find_tag(self):
        '''Rotate counterclockwise until find AR tag, then stops'''
        self.tello.send_rc_control(0, 0, 0, 40)
        while self.create_marker() == None:
            #self.tello.send_rc_control(0, 0, 0, 40)
            marker_check = self.create_marker()
            if isinstance(marker_check, Marker):
                print('here')
        print(f'Theta for found tag: {self.create_marker().theta}')
        self.tello.send_rc_control(0, 0, 0, 0)
        
    def center_on_tag(self, marker, k_P, k_I, k_D):
        theta = marker.theta
        pid = PID(k_P, k_I, k_D, setpoint=0)

        state = self.adjust_pos(0).theta

        i = 0
        while i < 100000: #Fixed time span. Change this to error threshold later
            #Compute new output from PID controller
            control = pid(state)
            #Feed PID output into system and get new theta state
            state = self.adjust_pos(control).theta
            print(f'Current theta: {state}')
            i += 1
        self.tello.land()
        
    def create_marker(self):
        frame_read = self.tello.get_frame_read()
        Image = frame_read.frame
        corners, ids, rejected = cv2.aruco.detectMarkers(Image, arucoDict, parameters=arucoParams)
        print(f'Corners: {corners}')
        if len(corners) > 0: #Assume only one AR Tag
            print('Marker being made')
            ID = ids[0][0]
            corners = corners[0][0]
            marker = Marker(ID, corners)
            return marker
        else:
            return None

def videoRecorder():
    height, width, _ = frame_read.frame.shape
    video = cv2.VideoWriter('video.avi', cv2.VideoWriter_fourcc(*'XVID'), 30, (width, height))
    
    while Record:
        Image = frame_read.frame

        (corners, ids, rejected) = cv2.aruco.detectMarkers(Image, arucoDict, parameters=arucoParams)
        if len(corners) > 0:
            #For now, I will only deal with the case of one AR Tag
            ID = ids[0][0]
            corners = corners[0][0]
            marker = Marker(ID, corners)
            
            print(f'Theta: {round(marker.theta,2)}')
        
        video.write(Image)
        time.sleep(1/30)

    video.release()

if __name__ == '__main__':
    if tello_on:
        flying = False
        
        tello = Tello()
        tello.connect()
        tello.streamon()

        #drone = Drone(tello)

        if flying:
            tello.takeoff()
            
        Record = True
    
        tello.streamon()
        #frame_read = tello.get_frame_read()
    
        recorder = Thread(target = videoRecorder)
        recorder.start()

        if flying:
            tello.land()
            
        tello.streamoff()
    
        Record = False
        recorder.join()

    else:
        flat = [512,195,585,200,570,337,499,317]
        corners = [[flat[i], flat[i+1]] for i in range(0,8,2)]
        marker = Marker(7, corners)
