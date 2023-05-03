# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from humanoid_league_msgs/LineIntersectionRelative.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import humanoid_league_msgs.msg

class LineIntersectionRelative(genpy.Message):
  _md5sum = "8392212b950b9d1b4d55e78d2094a2cf"
  _type = "humanoid_league_msgs/LineIntersectionRelative"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Information about a special line feature on the field

# The type defines which kind of intersection is present
uint8 UNDEFINED=0
uint8 L=1
uint8 T=2
uint8 X=3
uint8 type

# The line segments related to this crossing
humanoid_league_msgs/LineSegmentRelative segments

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

================================================================================
MSG: humanoid_league_msgs/LineSegmentRelative
# A line segment relative to the robot

# Start and end position of the line
# x in front of the robot
# y to the left
# z should be 0
geometry_msgs/Point start
geometry_msgs/Point end

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  # Pseudo-constants
  UNDEFINED = 0
  L = 1
  T = 2
  X = 3

  __slots__ = ['type','segments','confidence']
  _slot_types = ['uint8','humanoid_league_msgs/LineSegmentRelative','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       type,segments,confidence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LineIntersectionRelative, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.type is None:
        self.type = 0
      if self.segments is None:
        self.segments = humanoid_league_msgs.msg.LineSegmentRelative()
      if self.confidence is None:
        self.confidence = 0.
    else:
      self.type = 0
      self.segments = humanoid_league_msgs.msg.LineSegmentRelative()
      self.confidence = 0.

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
      buff.write(_get_struct_B6d2f().pack(_x.type, _x.segments.start.x, _x.segments.start.y, _x.segments.start.z, _x.segments.end.x, _x.segments.end.y, _x.segments.end.z, _x.segments.confidence, _x.confidence))
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
      if self.segments is None:
        self.segments = humanoid_league_msgs.msg.LineSegmentRelative()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.type, _x.segments.start.x, _x.segments.start.y, _x.segments.start.z, _x.segments.end.x, _x.segments.end.y, _x.segments.end.z, _x.segments.confidence, _x.confidence,) = _get_struct_B6d2f().unpack(str[start:end])
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
      buff.write(_get_struct_B6d2f().pack(_x.type, _x.segments.start.x, _x.segments.start.y, _x.segments.start.z, _x.segments.end.x, _x.segments.end.y, _x.segments.end.z, _x.segments.confidence, _x.confidence))
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
      if self.segments is None:
        self.segments = humanoid_league_msgs.msg.LineSegmentRelative()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.type, _x.segments.start.x, _x.segments.start.y, _x.segments.start.z, _x.segments.end.x, _x.segments.end.y, _x.segments.end.z, _x.segments.confidence, _x.confidence,) = _get_struct_B6d2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B6d2f = None
def _get_struct_B6d2f():
    global _struct_B6d2f
    if _struct_B6d2f is None:
        _struct_B6d2f = struct.Struct("<B6d2f")
    return _struct_B6d2f
