// Auto-generated. Do not edit!

// (in-package vision2_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.child_frame_id = null;
      this.frame_h = null;
      this.frame_w = null;
      this.bbx = null;
      this.num_detection = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('child_frame_id')) {
        this.child_frame_id = initObj.child_frame_id
      }
      else {
        this.child_frame_id = '';
      }
      if (initObj.hasOwnProperty('frame_h')) {
        this.frame_h = initObj.frame_h
      }
      else {
        this.frame_h = 0;
      }
      if (initObj.hasOwnProperty('frame_w')) {
        this.frame_w = initObj.frame_w
      }
      else {
        this.frame_w = 0;
      }
      if (initObj.hasOwnProperty('bbx')) {
        this.bbx = initObj.bbx
      }
      else {
        this.bbx = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('num_detection')) {
        this.num_detection = initObj.num_detection
      }
      else {
        this.num_detection = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type detection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [child_frame_id]
    bufferOffset = _serializer.string(obj.child_frame_id, buffer, bufferOffset);
    // Serialize message field [frame_h]
    bufferOffset = _serializer.int64(obj.frame_h, buffer, bufferOffset);
    // Serialize message field [frame_w]
    bufferOffset = _serializer.int64(obj.frame_w, buffer, bufferOffset);
    // Check that the constant length array field [bbx] has the right length
    if (obj.bbx.length !== 4) {
      throw new Error('Unable to serialize array field bbx - length must be 4')
    }
    // Serialize message field [bbx]
    bufferOffset = _arraySerializer.int64(obj.bbx, buffer, bufferOffset, 4);
    // Serialize message field [num_detection]
    bufferOffset = _serializer.int64(obj.num_detection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type detection
    let len;
    let data = new detection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [child_frame_id]
    data.child_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame_h]
    data.frame_h = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [frame_w]
    data.frame_w = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [bbx]
    data.bbx = _arrayDeserializer.int64(buffer, bufferOffset, 4)
    // Deserialize message field [num_detection]
    data.num_detection = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.child_frame_id.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision2_ros/detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3657f46004902b9617cde844c0dc008';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string child_frame_id # child frame
    int64 frame_h   # frame height
    int64 frame_w  # frame width
    int64[4] bbx   # outputs an array of upper and lower bounding box of the detection. bbx[lower_left_x,lower_left_y,upper_right_x, upper_right_y]
    int64 num_detection # outputs the number of detections
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new detection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.child_frame_id !== undefined) {
      resolved.child_frame_id = msg.child_frame_id;
    }
    else {
      resolved.child_frame_id = ''
    }

    if (msg.frame_h !== undefined) {
      resolved.frame_h = msg.frame_h;
    }
    else {
      resolved.frame_h = 0
    }

    if (msg.frame_w !== undefined) {
      resolved.frame_w = msg.frame_w;
    }
    else {
      resolved.frame_w = 0
    }

    if (msg.bbx !== undefined) {
      resolved.bbx = msg.bbx;
    }
    else {
      resolved.bbx = new Array(4).fill(0)
    }

    if (msg.num_detection !== undefined) {
      resolved.num_detection = msg.num_detection;
    }
    else {
      resolved.num_detection = 0
    }

    return resolved;
    }
};

module.exports = detection;
