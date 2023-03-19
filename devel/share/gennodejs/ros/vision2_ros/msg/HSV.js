// Auto-generated. Do not edit!

// (in-package vision2_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HSV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hsv_values = null;
    }
    else {
      if (initObj.hasOwnProperty('hsv_values')) {
        this.hsv_values = initObj.hsv_values
      }
      else {
        this.hsv_values = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HSV
    // Check that the constant length array field [hsv_values] has the right length
    if (obj.hsv_values.length !== 6) {
      throw new Error('Unable to serialize array field hsv_values - length must be 6')
    }
    // Serialize message field [hsv_values]
    bufferOffset = _arraySerializer.int64(obj.hsv_values, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HSV
    let len;
    let data = new HSV(null);
    // Deserialize message field [hsv_values]
    data.hsv_values = _arrayDeserializer.int64(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision2_ros/HSV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fbdf4b8124056a7224543e418dc9dfe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # variables to hold HSV settings
    
    int64[6] hsv_values 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HSV(null);
    if (msg.hsv_values !== undefined) {
      resolved.hsv_values = msg.hsv_values;
    }
    else {
      resolved.hsv_values = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = HSV;
