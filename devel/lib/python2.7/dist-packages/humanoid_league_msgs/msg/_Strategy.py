# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from humanoid_league_msgs/Strategy.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Strategy(genpy.Message):
  _md5sum = "73b1522777cf7f264eedf954da4c5819"
  _type = "humanoid_league_msgs/Strategy"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This message provides information about the current strategy of the robot to the team communication so that it can be
# shared with other team robots

# Which role the robot has currently
uint8 ROLE_IDLING=0
uint8 ROLE_OTHER=1
uint8 ROLE_STRIKER=2
uint8 ROLE_SUPPORTER=3
uint8 ROLE_DEFENDER=4
uint8 ROLE_GOALIE=5
uint8 role

# The current action of the robot
uint8 ACTION_UNDEFINED=0
uint8 ACTION_POSITIONING=1
uint8 ACTION_GOING_TO_BALL=2
uint8 ACTION_TRYING_TO_SCORE=3
uint8 ACTION_WAITING=4
uint8 action

# Offensive strategy
uint8 SIDE_LEFT = 0
uint8 SIDE_MIDDLE = 1
uint8 SIDE_RIGHT = 2
uint8 offensive_side"""
  # Pseudo-constants
  ROLE_IDLING = 0
  ROLE_OTHER = 1
  ROLE_STRIKER = 2
  ROLE_SUPPORTER = 3
  ROLE_DEFENDER = 4
  ROLE_GOALIE = 5
  ACTION_UNDEFINED = 0
  ACTION_POSITIONING = 1
  ACTION_GOING_TO_BALL = 2
  ACTION_TRYING_TO_SCORE = 3
  ACTION_WAITING = 4
  SIDE_LEFT = 0
  SIDE_MIDDLE = 1
  SIDE_RIGHT = 2

  __slots__ = ['role','action','offensive_side']
  _slot_types = ['uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       role,action,offensive_side

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Strategy, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.role is None:
        self.role = 0
      if self.action is None:
        self.action = 0
      if self.offensive_side is None:
        self.offensive_side = 0
    else:
      self.role = 0
      self.action = 0
      self.offensive_side = 0

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
      buff.write(_get_struct_3B().pack(_x.role, _x.action, _x.offensive_side))
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
      end += 3
      (_x.role, _x.action, _x.offensive_side,) = _get_struct_3B().unpack(str[start:end])
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
      buff.write(_get_struct_3B().pack(_x.role, _x.action, _x.offensive_side))
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
      end += 3
      (_x.role, _x.action, _x.offensive_side,) = _get_struct_3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
