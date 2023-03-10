# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from capture_step_module_msgs/GetWalkingParamRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetWalkingParamRequest(genpy.Message):
  _md5sum = "d964a0520d7b14bf821ec75afc464385"
  _type = "capture_step_module_msgs/GetWalkingParamRequest"
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
      super(GetWalkingParamRequest, self).__init__(*args, **kwds)
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
"""autogenerated by genpy from capture_step_module_msgs/GetWalkingParamResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import capture_step_module_msgs.msg

class GetWalkingParamResponse(genpy.Message):
  _md5sum = "5a3185d180ac091f9720a1861c16b1c7"
  _type = "capture_step_module_msgs/GetWalkingParamResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """WalkingParam    parameters

================================================================================
MSG: capture_step_module_msgs/WalkingParam
####### Halt Position #######
float32 halt_pos_leg_ext
float32 halt_pos_leg_roll_ext
float32 halt_pos_leg_pitch_ext
float32 halt_pos_foot_roll_ext
float32 halt_pos_foot_pitch_ext

####### Leg Lifting #####
float32 const_ground_push
float32 propt_ground_push
float32 const_step_height
float32 propt_step_height

########## Leg Swing ########
float32 swing_start
float32 swing_stop
float32 sagittal_swg_fwd
float32 sagittal_swg_bwd
float32 lateral_swg
float32 lateral_swg_offset
float32 trng_lateral_swg_offset
float32 rotational_swg
float32 rotational_swg_offset

########## Lateral Hip Swing ##########
float32 lateral_hip_swg

########## Leaning ##########
float32 fwd_lean
float32 bwd_lean
float32 fwd_trng_lean

########## Step ##########
float32 gait_vel_limit
float32 sagittal_acc
float32 lateral_acc
float32 rotational_acc
float32 const_step_freq
float32 sagittal_prop_step_freq
float32 lateral_prop_step_freq

########## walking parameter ########
float32 x_move_amplitude
float32 y_move_amplitude
float32 angle_move_amplitude
bool halt_position
bool leg_lifting
bool leg_swing
bool lateral_swing
bool leaning

"""
  __slots__ = ['parameters']
  _slot_types = ['capture_step_module_msgs/WalkingParam']

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
      super(GetWalkingParamResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.parameters is None:
        self.parameters = capture_step_module_msgs.msg.WalkingParam()
    else:
      self.parameters = capture_step_module_msgs.msg.WalkingParam()

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
      buff.write(_get_struct_32f5B().pack(_x.parameters.halt_pos_leg_ext, _x.parameters.halt_pos_leg_roll_ext, _x.parameters.halt_pos_leg_pitch_ext, _x.parameters.halt_pos_foot_roll_ext, _x.parameters.halt_pos_foot_pitch_ext, _x.parameters.const_ground_push, _x.parameters.propt_ground_push, _x.parameters.const_step_height, _x.parameters.propt_step_height, _x.parameters.swing_start, _x.parameters.swing_stop, _x.parameters.sagittal_swg_fwd, _x.parameters.sagittal_swg_bwd, _x.parameters.lateral_swg, _x.parameters.lateral_swg_offset, _x.parameters.trng_lateral_swg_offset, _x.parameters.rotational_swg, _x.parameters.rotational_swg_offset, _x.parameters.lateral_hip_swg, _x.parameters.fwd_lean, _x.parameters.bwd_lean, _x.parameters.fwd_trng_lean, _x.parameters.gait_vel_limit, _x.parameters.sagittal_acc, _x.parameters.lateral_acc, _x.parameters.rotational_acc, _x.parameters.const_step_freq, _x.parameters.sagittal_prop_step_freq, _x.parameters.lateral_prop_step_freq, _x.parameters.x_move_amplitude, _x.parameters.y_move_amplitude, _x.parameters.angle_move_amplitude, _x.parameters.halt_position, _x.parameters.leg_lifting, _x.parameters.leg_swing, _x.parameters.lateral_swing, _x.parameters.leaning))
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
        self.parameters = capture_step_module_msgs.msg.WalkingParam()
      end = 0
      _x = self
      start = end
      end += 133
      (_x.parameters.halt_pos_leg_ext, _x.parameters.halt_pos_leg_roll_ext, _x.parameters.halt_pos_leg_pitch_ext, _x.parameters.halt_pos_foot_roll_ext, _x.parameters.halt_pos_foot_pitch_ext, _x.parameters.const_ground_push, _x.parameters.propt_ground_push, _x.parameters.const_step_height, _x.parameters.propt_step_height, _x.parameters.swing_start, _x.parameters.swing_stop, _x.parameters.sagittal_swg_fwd, _x.parameters.sagittal_swg_bwd, _x.parameters.lateral_swg, _x.parameters.lateral_swg_offset, _x.parameters.trng_lateral_swg_offset, _x.parameters.rotational_swg, _x.parameters.rotational_swg_offset, _x.parameters.lateral_hip_swg, _x.parameters.fwd_lean, _x.parameters.bwd_lean, _x.parameters.fwd_trng_lean, _x.parameters.gait_vel_limit, _x.parameters.sagittal_acc, _x.parameters.lateral_acc, _x.parameters.rotational_acc, _x.parameters.const_step_freq, _x.parameters.sagittal_prop_step_freq, _x.parameters.lateral_prop_step_freq, _x.parameters.x_move_amplitude, _x.parameters.y_move_amplitude, _x.parameters.angle_move_amplitude, _x.parameters.halt_position, _x.parameters.leg_lifting, _x.parameters.leg_swing, _x.parameters.lateral_swing, _x.parameters.leaning,) = _get_struct_32f5B().unpack(str[start:end])
      self.parameters.halt_position = bool(self.parameters.halt_position)
      self.parameters.leg_lifting = bool(self.parameters.leg_lifting)
      self.parameters.leg_swing = bool(self.parameters.leg_swing)
      self.parameters.lateral_swing = bool(self.parameters.lateral_swing)
      self.parameters.leaning = bool(self.parameters.leaning)
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
      buff.write(_get_struct_32f5B().pack(_x.parameters.halt_pos_leg_ext, _x.parameters.halt_pos_leg_roll_ext, _x.parameters.halt_pos_leg_pitch_ext, _x.parameters.halt_pos_foot_roll_ext, _x.parameters.halt_pos_foot_pitch_ext, _x.parameters.const_ground_push, _x.parameters.propt_ground_push, _x.parameters.const_step_height, _x.parameters.propt_step_height, _x.parameters.swing_start, _x.parameters.swing_stop, _x.parameters.sagittal_swg_fwd, _x.parameters.sagittal_swg_bwd, _x.parameters.lateral_swg, _x.parameters.lateral_swg_offset, _x.parameters.trng_lateral_swg_offset, _x.parameters.rotational_swg, _x.parameters.rotational_swg_offset, _x.parameters.lateral_hip_swg, _x.parameters.fwd_lean, _x.parameters.bwd_lean, _x.parameters.fwd_trng_lean, _x.parameters.gait_vel_limit, _x.parameters.sagittal_acc, _x.parameters.lateral_acc, _x.parameters.rotational_acc, _x.parameters.const_step_freq, _x.parameters.sagittal_prop_step_freq, _x.parameters.lateral_prop_step_freq, _x.parameters.x_move_amplitude, _x.parameters.y_move_amplitude, _x.parameters.angle_move_amplitude, _x.parameters.halt_position, _x.parameters.leg_lifting, _x.parameters.leg_swing, _x.parameters.lateral_swing, _x.parameters.leaning))
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
        self.parameters = capture_step_module_msgs.msg.WalkingParam()
      end = 0
      _x = self
      start = end
      end += 133
      (_x.parameters.halt_pos_leg_ext, _x.parameters.halt_pos_leg_roll_ext, _x.parameters.halt_pos_leg_pitch_ext, _x.parameters.halt_pos_foot_roll_ext, _x.parameters.halt_pos_foot_pitch_ext, _x.parameters.const_ground_push, _x.parameters.propt_ground_push, _x.parameters.const_step_height, _x.parameters.propt_step_height, _x.parameters.swing_start, _x.parameters.swing_stop, _x.parameters.sagittal_swg_fwd, _x.parameters.sagittal_swg_bwd, _x.parameters.lateral_swg, _x.parameters.lateral_swg_offset, _x.parameters.trng_lateral_swg_offset, _x.parameters.rotational_swg, _x.parameters.rotational_swg_offset, _x.parameters.lateral_hip_swg, _x.parameters.fwd_lean, _x.parameters.bwd_lean, _x.parameters.fwd_trng_lean, _x.parameters.gait_vel_limit, _x.parameters.sagittal_acc, _x.parameters.lateral_acc, _x.parameters.rotational_acc, _x.parameters.const_step_freq, _x.parameters.sagittal_prop_step_freq, _x.parameters.lateral_prop_step_freq, _x.parameters.x_move_amplitude, _x.parameters.y_move_amplitude, _x.parameters.angle_move_amplitude, _x.parameters.halt_position, _x.parameters.leg_lifting, _x.parameters.leg_swing, _x.parameters.lateral_swing, _x.parameters.leaning,) = _get_struct_32f5B().unpack(str[start:end])
      self.parameters.halt_position = bool(self.parameters.halt_position)
      self.parameters.leg_lifting = bool(self.parameters.leg_lifting)
      self.parameters.leg_swing = bool(self.parameters.leg_swing)
      self.parameters.lateral_swing = bool(self.parameters.lateral_swing)
      self.parameters.leaning = bool(self.parameters.leaning)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_32f5B = None
def _get_struct_32f5B():
    global _struct_32f5B
    if _struct_32f5B is None:
        _struct_32f5B = struct.Struct("<32f5B")
    return _struct_32f5B
class GetWalkingParam(object):
  _type          = 'capture_step_module_msgs/GetWalkingParam'
  _md5sum = '33e093e1a36ede369994f83338945659'
  _request_class  = GetWalkingParamRequest
  _response_class = GetWalkingParamResponse
