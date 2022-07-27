// Auto-generated. Do not edit!

// (in-package tello.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.acc = null;
      this.low_temp = null;
      this.temp = null;
      this.high_temp = null;
      this.height = null;
      this.dist_tof = null;
      this.barometer = null;
      this.flight_time = null;
      this.battery = null;
      this.is_flying = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('low_temp')) {
        this.low_temp = initObj.low_temp
      }
      else {
        this.low_temp = 0;
      }
      if (initObj.hasOwnProperty('temp')) {
        this.temp = initObj.temp
      }
      else {
        this.temp = 0.0;
      }
      if (initObj.hasOwnProperty('high_temp')) {
        this.high_temp = initObj.high_temp
      }
      else {
        this.high_temp = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('dist_tof')) {
        this.dist_tof = initObj.dist_tof
      }
      else {
        this.dist_tof = 0;
      }
      if (initObj.hasOwnProperty('barometer')) {
        this.barometer = initObj.barometer
      }
      else {
        this.barometer = 0.0;
      }
      if (initObj.hasOwnProperty('flight_time')) {
        this.flight_time = initObj.flight_time
      }
      else {
        this.flight_time = 0;
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = 0;
      }
      if (initObj.hasOwnProperty('is_flying')) {
        this.is_flying = initObj.is_flying
      }
      else {
        this.is_flying = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [speed]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acc, buffer, bufferOffset);
    // Serialize message field [low_temp]
    bufferOffset = _serializer.int32(obj.low_temp, buffer, bufferOffset);
    // Serialize message field [temp]
    bufferOffset = _serializer.float32(obj.temp, buffer, bufferOffset);
    // Serialize message field [high_temp]
    bufferOffset = _serializer.int32(obj.high_temp, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [dist_tof]
    bufferOffset = _serializer.int32(obj.dist_tof, buffer, bufferOffset);
    // Serialize message field [barometer]
    bufferOffset = _serializer.float32(obj.barometer, buffer, bufferOffset);
    // Serialize message field [flight_time]
    bufferOffset = _serializer.int32(obj.flight_time, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = _serializer.int32(obj.battery, buffer, bufferOffset);
    // Serialize message field [is_flying]
    bufferOffset = _serializer.bool(obj.is_flying, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [speed]
    data.speed = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [low_temp]
    data.low_temp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [temp]
    data.temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [high_temp]
    data.high_temp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dist_tof]
    data.dist_tof = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [barometer]
    data.barometer = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [flight_time]
    data.flight_time = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_flying]
    data.is_flying = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 105;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tello/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6630f0e1fde411489f81f1f26bbffa96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist speed
    # linear: x, y, z
    # angular: x (roll), y (pitch), z (yaw)
    
    geometry_msgs/Vector3 acc
    # x, y, z acc
    
    int32 low_temp # deg C
    float32 temp
    int32 high_temp
    
    int32 height # cm
    int32 dist_tof
    float32 barometer
    
    int32 flight_time   # time the motors have been active, seconds
    int32 battery # 0-100
    
    bool is_flying
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.speed !== undefined) {
      resolved.speed = geometry_msgs.msg.Twist.Resolve(msg.speed)
    }
    else {
      resolved.speed = new geometry_msgs.msg.Twist()
    }

    if (msg.acc !== undefined) {
      resolved.acc = geometry_msgs.msg.Vector3.Resolve(msg.acc)
    }
    else {
      resolved.acc = new geometry_msgs.msg.Vector3()
    }

    if (msg.low_temp !== undefined) {
      resolved.low_temp = msg.low_temp;
    }
    else {
      resolved.low_temp = 0
    }

    if (msg.temp !== undefined) {
      resolved.temp = msg.temp;
    }
    else {
      resolved.temp = 0.0
    }

    if (msg.high_temp !== undefined) {
      resolved.high_temp = msg.high_temp;
    }
    else {
      resolved.high_temp = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.dist_tof !== undefined) {
      resolved.dist_tof = msg.dist_tof;
    }
    else {
      resolved.dist_tof = 0
    }

    if (msg.barometer !== undefined) {
      resolved.barometer = msg.barometer;
    }
    else {
      resolved.barometer = 0.0
    }

    if (msg.flight_time !== undefined) {
      resolved.flight_time = msg.flight_time;
    }
    else {
      resolved.flight_time = 0
    }

    if (msg.battery !== undefined) {
      resolved.battery = msg.battery;
    }
    else {
      resolved.battery = 0
    }

    if (msg.is_flying !== undefined) {
      resolved.is_flying = msg.is_flying;
    }
    else {
      resolved.is_flying = false
    }

    return resolved;
    }
};

module.exports = State;
