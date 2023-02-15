# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from analyze_msgs/Fuzzy.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Fuzzy(genpy.Message):
  _md5sum = "0dbe4ca5345b8d8e12609086d919c0bc"
  _type = "analyze_msgs/Fuzzy"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 Cond
float32 Out
float32 Ori
float32 Gyr
"""
  __slots__ = ['Cond','Out','Ori','Gyr']
  _slot_types = ['int32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Cond,Out,Ori,Gyr

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Fuzzy, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Cond is None:
        self.Cond = 0
      if self.Out is None:
        self.Out = 0.
      if self.Ori is None:
        self.Ori = 0.
      if self.Gyr is None:
        self.Gyr = 0.
    else:
      self.Cond = 0
      self.Out = 0.
      self.Ori = 0.
      self.Gyr = 0.

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
      buff.write(_get_struct_i3f().pack(_x.Cond, _x.Out, _x.Ori, _x.Gyr))
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
      end += 16
      (_x.Cond, _x.Out, _x.Ori, _x.Gyr,) = _get_struct_i3f().unpack(str[start:end])
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
      buff.write(_get_struct_i3f().pack(_x.Cond, _x.Out, _x.Ori, _x.Gyr))
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
      end += 16
      (_x.Cond, _x.Out, _x.Ori, _x.Gyr,) = _get_struct_i3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i3f = None
def _get_struct_i3f():
    global _struct_i3f
    if _struct_i3f is None:
        _struct_i3f = struct.Struct("<i3f")
    return _struct_i3f