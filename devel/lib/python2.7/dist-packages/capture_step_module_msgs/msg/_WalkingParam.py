# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from capture_step_module_msgs/WalkingParam.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class WalkingParam(genpy.Message):
  _md5sum = "a551969adc87659403547b3d4bb643f5"
  _type = "capture_step_module_msgs/WalkingParam"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """####### Halt Position #######
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
  __slots__ = ['halt_pos_leg_ext','halt_pos_leg_roll_ext','halt_pos_leg_pitch_ext','halt_pos_foot_roll_ext','halt_pos_foot_pitch_ext','const_ground_push','propt_ground_push','const_step_height','propt_step_height','swing_start','swing_stop','sagittal_swg_fwd','sagittal_swg_bwd','lateral_swg','lateral_swg_offset','trng_lateral_swg_offset','rotational_swg','rotational_swg_offset','lateral_hip_swg','fwd_lean','bwd_lean','fwd_trng_lean','gait_vel_limit','sagittal_acc','lateral_acc','rotational_acc','const_step_freq','sagittal_prop_step_freq','lateral_prop_step_freq','x_move_amplitude','y_move_amplitude','angle_move_amplitude','halt_position','leg_lifting','leg_swing','lateral_swing','leaning']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','bool','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       halt_pos_leg_ext,halt_pos_leg_roll_ext,halt_pos_leg_pitch_ext,halt_pos_foot_roll_ext,halt_pos_foot_pitch_ext,const_ground_push,propt_ground_push,const_step_height,propt_step_height,swing_start,swing_stop,sagittal_swg_fwd,sagittal_swg_bwd,lateral_swg,lateral_swg_offset,trng_lateral_swg_offset,rotational_swg,rotational_swg_offset,lateral_hip_swg,fwd_lean,bwd_lean,fwd_trng_lean,gait_vel_limit,sagittal_acc,lateral_acc,rotational_acc,const_step_freq,sagittal_prop_step_freq,lateral_prop_step_freq,x_move_amplitude,y_move_amplitude,angle_move_amplitude,halt_position,leg_lifting,leg_swing,lateral_swing,leaning

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WalkingParam, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.halt_pos_leg_ext is None:
        self.halt_pos_leg_ext = 0.
      if self.halt_pos_leg_roll_ext is None:
        self.halt_pos_leg_roll_ext = 0.
      if self.halt_pos_leg_pitch_ext is None:
        self.halt_pos_leg_pitch_ext = 0.
      if self.halt_pos_foot_roll_ext is None:
        self.halt_pos_foot_roll_ext = 0.
      if self.halt_pos_foot_pitch_ext is None:
        self.halt_pos_foot_pitch_ext = 0.
      if self.const_ground_push is None:
        self.const_ground_push = 0.
      if self.propt_ground_push is None:
        self.propt_ground_push = 0.
      if self.const_step_height is None:
        self.const_step_height = 0.
      if self.propt_step_height is None:
        self.propt_step_height = 0.
      if self.swing_start is None:
        self.swing_start = 0.
      if self.swing_stop is None:
        self.swing_stop = 0.
      if self.sagittal_swg_fwd is None:
        self.sagittal_swg_fwd = 0.
      if self.sagittal_swg_bwd is None:
        self.sagittal_swg_bwd = 0.
      if self.lateral_swg is None:
        self.lateral_swg = 0.
      if self.lateral_swg_offset is None:
        self.lateral_swg_offset = 0.
      if self.trng_lateral_swg_offset is None:
        self.trng_lateral_swg_offset = 0.
      if self.rotational_swg is None:
        self.rotational_swg = 0.
      if self.rotational_swg_offset is None:
        self.rotational_swg_offset = 0.
      if self.lateral_hip_swg is None:
        self.lateral_hip_swg = 0.
      if self.fwd_lean is None:
        self.fwd_lean = 0.
      if self.bwd_lean is None:
        self.bwd_lean = 0.
      if self.fwd_trng_lean is None:
        self.fwd_trng_lean = 0.
      if self.gait_vel_limit is None:
        self.gait_vel_limit = 0.
      if self.sagittal_acc is None:
        self.sagittal_acc = 0.
      if self.lateral_acc is None:
        self.lateral_acc = 0.
      if self.rotational_acc is None:
        self.rotational_acc = 0.
      if self.const_step_freq is None:
        self.const_step_freq = 0.
      if self.sagittal_prop_step_freq is None:
        self.sagittal_prop_step_freq = 0.
      if self.lateral_prop_step_freq is None:
        self.lateral_prop_step_freq = 0.
      if self.x_move_amplitude is None:
        self.x_move_amplitude = 0.
      if self.y_move_amplitude is None:
        self.y_move_amplitude = 0.
      if self.angle_move_amplitude is None:
        self.angle_move_amplitude = 0.
      if self.halt_position is None:
        self.halt_position = False
      if self.leg_lifting is None:
        self.leg_lifting = False
      if self.leg_swing is None:
        self.leg_swing = False
      if self.lateral_swing is None:
        self.lateral_swing = False
      if self.leaning is None:
        self.leaning = False
    else:
      self.halt_pos_leg_ext = 0.
      self.halt_pos_leg_roll_ext = 0.
      self.halt_pos_leg_pitch_ext = 0.
      self.halt_pos_foot_roll_ext = 0.
      self.halt_pos_foot_pitch_ext = 0.
      self.const_ground_push = 0.
      self.propt_ground_push = 0.
      self.const_step_height = 0.
      self.propt_step_height = 0.
      self.swing_start = 0.
      self.swing_stop = 0.
      self.sagittal_swg_fwd = 0.
      self.sagittal_swg_bwd = 0.
      self.lateral_swg = 0.
      self.lateral_swg_offset = 0.
      self.trng_lateral_swg_offset = 0.
      self.rotational_swg = 0.
      self.rotational_swg_offset = 0.
      self.lateral_hip_swg = 0.
      self.fwd_lean = 0.
      self.bwd_lean = 0.
      self.fwd_trng_lean = 0.
      self.gait_vel_limit = 0.
      self.sagittal_acc = 0.
      self.lateral_acc = 0.
      self.rotational_acc = 0.
      self.const_step_freq = 0.
      self.sagittal_prop_step_freq = 0.
      self.lateral_prop_step_freq = 0.
      self.x_move_amplitude = 0.
      self.y_move_amplitude = 0.
      self.angle_move_amplitude = 0.
      self.halt_position = False
      self.leg_lifting = False
      self.leg_swing = False
      self.lateral_swing = False
      self.leaning = False

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
      buff.write(_get_struct_32f5B().pack(_x.halt_pos_leg_ext, _x.halt_pos_leg_roll_ext, _x.halt_pos_leg_pitch_ext, _x.halt_pos_foot_roll_ext, _x.halt_pos_foot_pitch_ext, _x.const_ground_push, _x.propt_ground_push, _x.const_step_height, _x.propt_step_height, _x.swing_start, _x.swing_stop, _x.sagittal_swg_fwd, _x.sagittal_swg_bwd, _x.lateral_swg, _x.lateral_swg_offset, _x.trng_lateral_swg_offset, _x.rotational_swg, _x.rotational_swg_offset, _x.lateral_hip_swg, _x.fwd_lean, _x.bwd_lean, _x.fwd_trng_lean, _x.gait_vel_limit, _x.sagittal_acc, _x.lateral_acc, _x.rotational_acc, _x.const_step_freq, _x.sagittal_prop_step_freq, _x.lateral_prop_step_freq, _x.x_move_amplitude, _x.y_move_amplitude, _x.angle_move_amplitude, _x.halt_position, _x.leg_lifting, _x.leg_swing, _x.lateral_swing, _x.leaning))
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
      _x = self
      start = end
      end += 133
      (_x.halt_pos_leg_ext, _x.halt_pos_leg_roll_ext, _x.halt_pos_leg_pitch_ext, _x.halt_pos_foot_roll_ext, _x.halt_pos_foot_pitch_ext, _x.const_ground_push, _x.propt_ground_push, _x.const_step_height, _x.propt_step_height, _x.swing_start, _x.swing_stop, _x.sagittal_swg_fwd, _x.sagittal_swg_bwd, _x.lateral_swg, _x.lateral_swg_offset, _x.trng_lateral_swg_offset, _x.rotational_swg, _x.rotational_swg_offset, _x.lateral_hip_swg, _x.fwd_lean, _x.bwd_lean, _x.fwd_trng_lean, _x.gait_vel_limit, _x.sagittal_acc, _x.lateral_acc, _x.rotational_acc, _x.const_step_freq, _x.sagittal_prop_step_freq, _x.lateral_prop_step_freq, _x.x_move_amplitude, _x.y_move_amplitude, _x.angle_move_amplitude, _x.halt_position, _x.leg_lifting, _x.leg_swing, _x.lateral_swing, _x.leaning,) = _get_struct_32f5B().unpack(str[start:end])
      self.halt_position = bool(self.halt_position)
      self.leg_lifting = bool(self.leg_lifting)
      self.leg_swing = bool(self.leg_swing)
      self.lateral_swing = bool(self.lateral_swing)
      self.leaning = bool(self.leaning)
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
      buff.write(_get_struct_32f5B().pack(_x.halt_pos_leg_ext, _x.halt_pos_leg_roll_ext, _x.halt_pos_leg_pitch_ext, _x.halt_pos_foot_roll_ext, _x.halt_pos_foot_pitch_ext, _x.const_ground_push, _x.propt_ground_push, _x.const_step_height, _x.propt_step_height, _x.swing_start, _x.swing_stop, _x.sagittal_swg_fwd, _x.sagittal_swg_bwd, _x.lateral_swg, _x.lateral_swg_offset, _x.trng_lateral_swg_offset, _x.rotational_swg, _x.rotational_swg_offset, _x.lateral_hip_swg, _x.fwd_lean, _x.bwd_lean, _x.fwd_trng_lean, _x.gait_vel_limit, _x.sagittal_acc, _x.lateral_acc, _x.rotational_acc, _x.const_step_freq, _x.sagittal_prop_step_freq, _x.lateral_prop_step_freq, _x.x_move_amplitude, _x.y_move_amplitude, _x.angle_move_amplitude, _x.halt_position, _x.leg_lifting, _x.leg_swing, _x.lateral_swing, _x.leaning))
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
      _x = self
      start = end
      end += 133
      (_x.halt_pos_leg_ext, _x.halt_pos_leg_roll_ext, _x.halt_pos_leg_pitch_ext, _x.halt_pos_foot_roll_ext, _x.halt_pos_foot_pitch_ext, _x.const_ground_push, _x.propt_ground_push, _x.const_step_height, _x.propt_step_height, _x.swing_start, _x.swing_stop, _x.sagittal_swg_fwd, _x.sagittal_swg_bwd, _x.lateral_swg, _x.lateral_swg_offset, _x.trng_lateral_swg_offset, _x.rotational_swg, _x.rotational_swg_offset, _x.lateral_hip_swg, _x.fwd_lean, _x.bwd_lean, _x.fwd_trng_lean, _x.gait_vel_limit, _x.sagittal_acc, _x.lateral_acc, _x.rotational_acc, _x.const_step_freq, _x.sagittal_prop_step_freq, _x.lateral_prop_step_freq, _x.x_move_amplitude, _x.y_move_amplitude, _x.angle_move_amplitude, _x.halt_position, _x.leg_lifting, _x.leg_swing, _x.lateral_swing, _x.leaning,) = _get_struct_32f5B().unpack(str[start:end])
      self.halt_position = bool(self.halt_position)
      self.leg_lifting = bool(self.leg_lifting)
      self.leg_swing = bool(self.leg_swing)
      self.lateral_swing = bool(self.lateral_swing)
      self.leaning = bool(self.leaning)
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