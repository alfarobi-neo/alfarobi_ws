# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vision_utils/Feature.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Feature(genpy.Message):
  _md5sum = "82dbffcabd327fa650f6e5b36592a1a5"
  _type = "vision_utils/Feature"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 param1
float32 param2
float32 param3
float32 param4
float32 orientation
float32 feature_type
"""
  __slots__ = ['param1','param2','param3','param4','orientation','feature_type']
  _slot_types = ['float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       param1,param2,param3,param4,orientation,feature_type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Feature, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.param1 is None:
        self.param1 = 0.
      if self.param2 is None:
        self.param2 = 0.
      if self.param3 is None:
        self.param3 = 0.
      if self.param4 is None:
        self.param4 = 0.
      if self.orientation is None:
        self.orientation = 0.
      if self.feature_type is None:
        self.feature_type = 0.
    else:
      self.param1 = 0.
      self.param2 = 0.
      self.param3 = 0.
      self.param4 = 0.
      self.orientation = 0.
      self.feature_type = 0.

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
      buff.write(_get_struct_6f().pack(_x.param1, _x.param2, _x.param3, _x.param4, _x.orientation, _x.feature_type))
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
      end += 24
      (_x.param1, _x.param2, _x.param3, _x.param4, _x.orientation, _x.feature_type,) = _get_struct_6f().unpack(str[start:end])
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
      buff.write(_get_struct_6f().pack(_x.param1, _x.param2, _x.param3, _x.param4, _x.orientation, _x.feature_type))
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
      end += 24
      (_x.param1, _x.param2, _x.param3, _x.param4, _x.orientation, _x.feature_type,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
