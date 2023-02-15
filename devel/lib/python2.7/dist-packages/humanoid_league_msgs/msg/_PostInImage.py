# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from humanoid_league_msgs/PostInImage.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class PostInImage(genpy.Message):
  _md5sum = "69845e64be888b8b5f14fec4a8bcc64e"
  _type = "humanoid_league_msgs/PostInImage"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# A (possible) goal post in the image. It is defined by two end points and a width.

# Two points defining the significant axis of the post
geometry_msgs/Point foot_point
geometry_msgs/Point top_point
# Orthogonal to significant vector (in pixel)
float32 width

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['foot_point','top_point','width','confidence']
  _slot_types = ['geometry_msgs/Point','geometry_msgs/Point','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       foot_point,top_point,width,confidence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PostInImage, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.foot_point is None:
        self.foot_point = geometry_msgs.msg.Point()
      if self.top_point is None:
        self.top_point = geometry_msgs.msg.Point()
      if self.width is None:
        self.width = 0.
      if self.confidence is None:
        self.confidence = 0.
    else:
      self.foot_point = geometry_msgs.msg.Point()
      self.top_point = geometry_msgs.msg.Point()
      self.width = 0.
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
      buff.write(_get_struct_6d2f().pack(_x.foot_point.x, _x.foot_point.y, _x.foot_point.z, _x.top_point.x, _x.top_point.y, _x.top_point.z, _x.width, _x.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.foot_point is None:
        self.foot_point = geometry_msgs.msg.Point()
      if self.top_point is None:
        self.top_point = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.foot_point.x, _x.foot_point.y, _x.foot_point.z, _x.top_point.x, _x.top_point.y, _x.top_point.z, _x.width, _x.confidence,) = _get_struct_6d2f().unpack(str[start:end])
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
      buff.write(_get_struct_6d2f().pack(_x.foot_point.x, _x.foot_point.y, _x.foot_point.z, _x.top_point.x, _x.top_point.y, _x.top_point.z, _x.width, _x.confidence))
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
      if self.foot_point is None:
        self.foot_point = geometry_msgs.msg.Point()
      if self.top_point is None:
        self.top_point = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.foot_point.x, _x.foot_point.y, _x.foot_point.z, _x.top_point.x, _x.top_point.y, _x.top_point.z, _x.width, _x.confidence,) = _get_struct_6d2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d2f = None
def _get_struct_6d2f():
    global _struct_6d2f
    if _struct_6d2f is None:
        _struct_6d2f = struct.Struct("<6d2f")
    return _struct_6d2f
