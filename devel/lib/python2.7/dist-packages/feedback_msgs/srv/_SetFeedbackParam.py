# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from feedback_msgs/SetFeedbackParamRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import feedback_msgs.msg

class SetFeedbackParamRequest(genpy.Message):
  _md5sum = "58c64ecffe4d4e4baef347d4ff31af16"
  _type = "feedback_msgs/SetFeedbackParamRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """FeedbackParam    parameters

================================================================================
MSG: feedback_msgs/FeedbackParam
float32 Body_Height
float32 Body_Tilt
float32 Leg_X
float32 Leg_Y
float32 Leg_Z

float32 Leg_R_Z
float32 Leg_L_Z
float32 R_Roll
float32 L_Roll

float32 Setpoint_Pitch
float32 Setpoint_Roll

float32 Gain_Angle_Pitch
float32 Gain_Angle_Roll

float32 Gain_Velocity_Pitch
float32 Gain_Velocity_Roll

float32 Gain_Integral_Pitch
float32 Gain_Integral_Roll
"""
  __slots__ = ['parameters']
  _slot_types = ['feedback_msgs/FeedbackParam']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       parameters

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetFeedbackParamRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.parameters is None:
        self.parameters = feedback_msgs.msg.FeedbackParam()
    else:
      self.parameters = feedback_msgs.msg.FeedbackParam()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_17f().pack(_x.parameters.Body_Height, _x.parameters.Body_Tilt, _x.parameters.Leg_X, _x.parameters.Leg_Y, _x.parameters.Leg_Z, _x.parameters.Leg_R_Z, _x.parameters.Leg_L_Z, _x.parameters.R_Roll, _x.parameters.L_Roll, _x.parameters.Setpoint_Pitch, _x.parameters.Setpoint_Roll, _x.parameters.Gain_Angle_Pitch, _x.parameters.Gain_Angle_Roll, _x.parameters.Gain_Velocity_Pitch, _x.parameters.Gain_Velocity_Roll, _x.parameters.Gain_Integral_Pitch, _x.parameters.Gain_Integral_Roll))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.parameters is None:
        self.parameters = feedback_msgs.msg.FeedbackParam()
      end = 0
      _x = self
      start = end
      end += 68
      (_x.parameters.Body_Height, _x.parameters.Body_Tilt, _x.parameters.Leg_X, _x.parameters.Leg_Y, _x.parameters.Leg_Z, _x.parameters.Leg_R_Z, _x.parameters.Leg_L_Z, _x.parameters.R_Roll, _x.parameters.L_Roll, _x.parameters.Setpoint_Pitch, _x.parameters.Setpoint_Roll, _x.parameters.Gain_Angle_Pitch, _x.parameters.Gain_Angle_Roll, _x.parameters.Gain_Velocity_Pitch, _x.parameters.Gain_Velocity_Roll, _x.parameters.Gain_Integral_Pitch, _x.parameters.Gain_Integral_Roll,) = _get_struct_17f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_17f().pack(_x.parameters.Body_Height, _x.parameters.Body_Tilt, _x.parameters.Leg_X, _x.parameters.Leg_Y, _x.parameters.Leg_Z, _x.parameters.Leg_R_Z, _x.parameters.Leg_L_Z, _x.parameters.R_Roll, _x.parameters.L_Roll, _x.parameters.Setpoint_Pitch, _x.parameters.Setpoint_Roll, _x.parameters.Gain_Angle_Pitch, _x.parameters.Gain_Angle_Roll, _x.parameters.Gain_Velocity_Pitch, _x.parameters.Gain_Velocity_Roll, _x.parameters.Gain_Integral_Pitch, _x.parameters.Gain_Integral_Roll))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.parameters is None:
        self.parameters = feedback_msgs.msg.FeedbackParam()
      end = 0
      _x = self
      start = end
      end += 68
      (_x.parameters.Body_Height, _x.parameters.Body_Tilt, _x.parameters.Leg_X, _x.parameters.Leg_Y, _x.parameters.Leg_Z, _x.parameters.Leg_R_Z, _x.parameters.Leg_L_Z, _x.parameters.R_Roll, _x.parameters.L_Roll, _x.parameters.Setpoint_Pitch, _x.parameters.Setpoint_Roll, _x.parameters.Gain_Angle_Pitch, _x.parameters.Gain_Angle_Roll, _x.parameters.Gain_Velocity_Pitch, _x.parameters.Gain_Velocity_Roll, _x.parameters.Gain_Integral_Pitch, _x.parameters.Gain_Integral_Roll,) = _get_struct_17f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_17f = None
def _get_struct_17f():
    global _struct_17f
    if _struct_17f is None:
        _struct_17f = struct.Struct("<17f")
    return _struct_17f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from feedback_msgs/SetFeedbackParamResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetFeedbackParamResponse(genpy.Message):
  _md5sum = "eb13ac1f1354ccecb7941ee8fa2192e8"
  _type = "feedback_msgs/SetFeedbackParamResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool            result

"""
  __slots__ = ['result']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetFeedbackParamResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
    else:
      self.result = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.result
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class SetFeedbackParam(object):
  _type          = 'feedback_msgs/SetFeedbackParam'
  _md5sum = '9ad071cebaaf92d9d2cb3443b3bd44a4'
  _request_class  = SetFeedbackParamRequest
  _response_class = SetFeedbackParamResponse