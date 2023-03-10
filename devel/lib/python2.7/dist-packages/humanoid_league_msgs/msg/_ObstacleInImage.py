# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from humanoid_league_msgs/ObstacleInImage.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class ObstacleInImage(genpy.Message):
  _md5sum = "5e334321d63927966a578660e9c5fd06"
  _type = "humanoid_league_msgs/ObstacleInImage"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# An obstacle in the image, which can be a robot, a human or something else

# Main color of the obstacle, to differentiate between robots and other things like human legs
# Something we cant classify
uint8 UNDEFINED = 0
# Robot without known color
uint8 ROBOT_UNDEFINED = 1
uint8 ROBOT_MAGENTA = 2
uint8 ROBOT_CYAN = 3
# A human legs, e.g. from the referee
uint8 HUMAN = 4
# Black poles which are normally used for technical challenges
uint8 POLE = 5
uint8 color

# The number of the robot, if it is a robot and if it can be read. Put in -1 if not known
uint8 playerNumber

# The corresponding section in the image
geometry_msgs/Point top_left
uint8 height
uint8 width

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
  ROBOT_UNDEFINED = 1
  ROBOT_MAGENTA = 2
  ROBOT_CYAN = 3
  HUMAN = 4
  POLE = 5

  __slots__ = ['color','playerNumber','top_left','height','width','confidence']
  _slot_types = ['uint8','uint8','geometry_msgs/Point','uint8','uint8','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       color,playerNumber,top_left,height,width,confidence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ObstacleInImage, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.color is None:
        self.color = 0
      if self.playerNumber is None:
        self.playerNumber = 0
      if self.top_left is None:
        self.top_left = geometry_msgs.msg.Point()
      if self.height is None:
        self.height = 0
      if self.width is None:
        self.width = 0
      if self.confidence is None:
        self.confidence = 0.
    else:
      self.color = 0
      self.playerNumber = 0
      self.top_left = geometry_msgs.msg.Point()
      self.height = 0
      self.width = 0
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
      buff.write(_get_struct_2B3d2Bf().pack(_x.color, _x.playerNumber, _x.top_left.x, _x.top_left.y, _x.top_left.z, _x.height, _x.width, _x.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.top_left is None:
        self.top_left = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.color, _x.playerNumber, _x.top_left.x, _x.top_left.y, _x.top_left.z, _x.height, _x.width, _x.confidence,) = _get_struct_2B3d2Bf().unpack(str[start:end])
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
      buff.write(_get_struct_2B3d2Bf().pack(_x.color, _x.playerNumber, _x.top_left.x, _x.top_left.y, _x.top_left.z, _x.height, _x.width, _x.confidence))
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
      if self.top_left is None:
        self.top_left = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.color, _x.playerNumber, _x.top_left.x, _x.top_left.y, _x.top_left.z, _x.height, _x.width, _x.confidence,) = _get_struct_2B3d2Bf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B3d2Bf = None
def _get_struct_2B3d2Bf():
    global _struct_2B3d2Bf
    if _struct_2B3d2Bf is None:
        _struct_2B3d2Bf = struct.Struct("<2B3d2Bf")
    return _struct_2B3d2Bf
