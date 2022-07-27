// Auto-generated. Do not edit!

// (in-package tello.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Flip {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flip_command = null;
    }
    else {
      if (initObj.hasOwnProperty('flip_command')) {
        this.flip_command = initObj.flip_command
      }
      else {
        this.flip_command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Flip
    // Serialize message field [flip_command]
    bufferOffset = _serializer.uint8(obj.flip_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Flip
    let len;
    let data = new Flip(null);
    // Deserialize message field [flip_command]
    data.flip_command = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tello/Flip';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0ea7d798764a957a0739f2eac92306d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Reference: https://github.com/clydemcqueen/flock/blob/master/flock_msgs/msg/Flip.msg
    uint8 flip_forward=0
    uint8 flip_left=1
    uint8 flip_back=2
    uint8 flip_right=3
    uint8 flip_command
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Flip(null);
    if (msg.flip_command !== undefined) {
      resolved.flip_command = msg.flip_command;
    }
    else {
      resolved.flip_command = 0
    }

    return resolved;
    }
};

// Constants for message
Flip.Constants = {
  FLIP_FORWARD: 0,
  FLIP_LEFT: 1,
  FLIP_BACK: 2,
  FLIP_RIGHT: 3,
}

module.exports = Flip;
