# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kicking_module_msgs/GetKickingParamRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetKickingParamRequest(genpy.Message):
  _md5sum = "d964a0520d7b14bf821ec75afc464385"
  _type = "kicking_module_msgs/GetKickingParamRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool            get_param
"""
  __slots__ = ['get_param']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       get_param

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetKickingParamRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.get_param is None:
        self.get_param = False
    else:
      self.get_param = False

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
      _x = self.get_param
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.get_param,) = _get_struct_B().unpack(str[start:end])
      self.get_param = bool(self.get_param)
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
      _x = self.get_param
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.get_param,) = _get_struct_B().unpack(str[start:end])
      self.get_param = bool(self.get_param)
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
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from kicking_module_msgs/GetKickingParamResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import kicking_module_msgs.msg

class GetKickingParamResponse(genpy.Message):
  _md5sum = "cbede3e92a48cb3c6ddb9a7add8ea228"
  _type = "kicking_module_msgs/GetKickingParamResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """KickingParam    parameters


================================================================================
MSG: kicking_module_msgs/KickingParam
float32 Torso_X
float32 Torso_Y
float32 Torso_Z
float32 L_Shift_X
float32 L_Shift_Y
float32 L_Shift_Z
float32 R_Shift_X
float32 R_Shift_Y
float32 R_Shift_Z
float32 L_Lift_X
float32 L_Lift_Y
float32 L_Lift_Z
float32 R_Lift_X
float32 R_Lift_Y
float32 R_Lift_Z
float32 L_Swing_X
float32 L_Swing_Y
float32 L_Swing_Z
float32 R_Swing_X
float32 R_Swing_Y
float32 R_Swing_Z
float32 L_Retract_X
float32 L_Retract_Y
float32 L_Retract_Z
float32 R_Retract_X
float32 R_Retract_Y
float32 R_Retract_Z
float32 Torso_Pitch
float32 Shift_Roll
float32 Lift_Roll
float32 Lift_Pitch
float32 Swing_Roll
float32 Swing_Pitch
float32 Retract_Roll
float32 Retract_Pitch
float32 SHIFT_TIME
float32 LIFT_TIME
float32 SWING_TIME
float32 RETRACT_TIME
float32 LANDING_TIME
float32 FINISHED_TIME"""
  __slots__ = ['parameters']
  _slot_types = ['kicking_module_msgs/KickingParam']

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
      super(GetKickingParamResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.parameters is None:
        self.parameters = kicking_module_msgs.msg.KickingParam()
    else:
      self.parameters = kicking_module_msgs.msg.KickingParam()

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
      buff.write(_get_struct_41f().pack(_x.parameters.Torso_X, _x.parameters.Torso_Y, _x.parameters.Torso_Z, _x.parameters.L_Shift_X, _x.parameters.L_Shift_Y, _x.parameters.L_Shift_Z, _x.parameters.R_Shift_X, _x.parameters.R_Shift_Y, _x.parameters.R_Shift_Z, _x.parameters.L_Lift_X, _x.parameters.L_Lift_Y, _x.parameters.L_Lift_Z, _x.parameters.R_Lift_X, _x.parameters.R_Lift_Y, _x.parameters.R_Lift_Z, _x.parameters.L_Swing_X, _x.parameters.L_Swing_Y, _x.parameters.L_Swing_Z, _x.parameters.R_Swing_X, _x.parameters.R_Swing_Y, _x.parameters.R_Swing_Z, _x.parameters.L_Retract_X, _x.parameters.L_Retract_Y, _x.parameters.L_Retract_Z, _x.parameters.R_Retract_X, _x.parameters.R_Retract_Y, _x.parameters.R_Retract_Z, _x.parameters.Torso_Pitch, _x.parameters.Shift_Roll, _x.parameters.Lift_Roll, _x.parameters.Lift_Pitch, _x.parameters.Swing_Roll, _x.parameters.Swing_Pitch, _x.parameters.Retract_Roll, _x.parameters.Retract_Pitch, _x.parameters.SHIFT_TIME, _x.parameters.LIFT_TIME, _x.parameters.SWING_TIME, _x.parameters.RETRACT_TIME, _x.parameters.LANDING_TIME, _x.parameters.FINISHED_TIME))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.parameters is None:
        self.parameters = kicking_module_msgs.msg.KickingParam()
      end = 0
      _x = self
      start = end
      end += 164
      (_x.parameters.Torso_X, _x.parameters.Torso_Y, _x.parameters.Torso_Z, _x.parameters.L_Shift_X, _x.parameters.L_Shift_Y, _x.parameters.L_Shift_Z, _x.parameters.R_Shift_X, _x.parameters.R_Shift_Y, _x.parameters.R_Shift_Z, _x.parameters.L_Lift_X, _x.parameters.L_Lift_Y, _x.parameters.L_Lift_Z, _x.parameters.R_Lift_X, _x.parameters.R_Lift_Y, _x.parameters.R_Lift_Z, _x.parameters.L_Swing_X, _x.parameters.L_Swing_Y, _x.parameters.L_Swing_Z, _x.parameters.R_Swing_X, _x.parameters.R_Swing_Y, _x.parameters.R_Swing_Z, _x.parameters.L_Retract_X, _x.parameters.L_Retract_Y, _x.parameters.L_Retract_Z, _x.parameters.R_Retract_X, _x.parameters.R_Retract_Y, _x.parameters.R_Retract_Z, _x.parameters.Torso_Pitch, _x.parameters.Shift_Roll, _x.parameters.Lift_Roll, _x.parameters.Lift_Pitch, _x.parameters.Swing_Roll, _x.parameters.Swing_Pitch, _x.parameters.Retract_Roll, _x.parameters.Retract_Pitch, _x.parameters.SHIFT_TIME, _x.parameters.LIFT_TIME, _x.parameters.SWING_TIME, _x.parameters.RETRACT_TIME, _x.parameters.LANDING_TIME, _x.parameters.FINISHED_TIME,) = _get_struct_41f().unpack(str[start:end])
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
      buff.write(_get_struct_41f().pack(_x.parameters.Torso_X, _x.parameters.Torso_Y, _x.parameters.Torso_Z, _x.parameters.L_Shift_X, _x.parameters.L_Shift_Y, _x.parameters.L_Shift_Z, _x.parameters.R_Shift_X, _x.parameters.R_Shift_Y, _x.parameters.R_Shift_Z, _x.parameters.L_Lift_X, _x.parameters.L_Lift_Y, _x.parameters.L_Lift_Z, _x.parameters.R_Lift_X, _x.parameters.R_Lift_Y, _x.parameters.R_Lift_Z, _x.parameters.L_Swing_X, _x.parameters.L_Swing_Y, _x.parameters.L_Swing_Z, _x.parameters.R_Swing_X, _x.parameters.R_Swing_Y, _x.parameters.R_Swing_Z, _x.parameters.L_Retract_X, _x.parameters.L_Retract_Y, _x.parameters.L_Retract_Z, _x.parameters.R_Retract_X, _x.parameters.R_Retract_Y, _x.parameters.R_Retract_Z, _x.parameters.Torso_Pitch, _x.parameters.Shift_Roll, _x.parameters.Lift_Roll, _x.parameters.Lift_Pitch, _x.parameters.Swing_Roll, _x.parameters.Swing_Pitch, _x.parameters.Retract_Roll, _x.parameters.Retract_Pitch, _x.parameters.SHIFT_TIME, _x.parameters.LIFT_TIME, _x.parameters.SWING_TIME, _x.parameters.RETRACT_TIME, _x.parameters.LANDING_TIME, _x.parameters.FINISHED_TIME))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.parameters is None:
        self.parameters = kicking_module_msgs.msg.KickingParam()
      end = 0
      _x = self
      start = end
      end += 164
      (_x.parameters.Torso_X, _x.parameters.Torso_Y, _x.parameters.Torso_Z, _x.parameters.L_Shift_X, _x.parameters.L_Shift_Y, _x.parameters.L_Shift_Z, _x.parameters.R_Shift_X, _x.parameters.R_Shift_Y, _x.parameters.R_Shift_Z, _x.parameters.L_Lift_X, _x.parameters.L_Lift_Y, _x.parameters.L_Lift_Z, _x.parameters.R_Lift_X, _x.parameters.R_Lift_Y, _x.parameters.R_Lift_Z, _x.parameters.L_Swing_X, _x.parameters.L_Swing_Y, _x.parameters.L_Swing_Z, _x.parameters.R_Swing_X, _x.parameters.R_Swing_Y, _x.parameters.R_Swing_Z, _x.parameters.L_Retract_X, _x.parameters.L_Retract_Y, _x.parameters.L_Retract_Z, _x.parameters.R_Retract_X, _x.parameters.R_Retract_Y, _x.parameters.R_Retract_Z, _x.parameters.Torso_Pitch, _x.parameters.Shift_Roll, _x.parameters.Lift_Roll, _x.parameters.Lift_Pitch, _x.parameters.Swing_Roll, _x.parameters.Swing_Pitch, _x.parameters.Retract_Roll, _x.parameters.Retract_Pitch, _x.parameters.SHIFT_TIME, _x.parameters.LIFT_TIME, _x.parameters.SWING_TIME, _x.parameters.RETRACT_TIME, _x.parameters.LANDING_TIME, _x.parameters.FINISHED_TIME,) = _get_struct_41f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_41f = None
def _get_struct_41f():
    global _struct_41f
    if _struct_41f is None:
        _struct_41f = struct.Struct("<41f")
    return _struct_41f
class GetKickingParam(object):
  _type          = 'kicking_module_msgs/GetKickingParam'
  _md5sum = 'e283d303756e828e5a3f8f0cc145b425'
  _request_class  = GetKickingParamRequest
  _response_class = GetKickingParamResponse
