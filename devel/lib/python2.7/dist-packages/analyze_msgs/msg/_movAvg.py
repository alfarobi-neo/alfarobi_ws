# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from analyze_msgs/movAvg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class movAvg(genpy.Message):
  _md5sum = "b26380dcaf44460c112d4bf22253d83e"
  _type = "analyze_msgs/movAvg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 Kp
float32 Kd
float32 Ankle
float32 gyr_y_aft
"""
  __slots__ = ['Kp','Kd','Ankle','gyr_y_aft']
  _slot_types = ['float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Kp,Kd,Ankle,gyr_y_aft

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(movAvg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Kp is None:
        self.Kp = 0.
      if self.Kd is None:
        self.Kd = 0.
      if self.Ankle is None:
        self.Ankle = 0.
      if self.gyr_y_aft is None:
        self.gyr_y_aft = 0.
    else:
      self.Kp = 0.
      self.Kd = 0.
      self.Ankle = 0.
      self.gyr_y_aft = 0.

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
      buff.write(_get_struct_4f().pack(_x.Kp, _x.Kd, _x.Ankle, _x.gyr_y_aft))
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
      (_x.Kp, _x.Kd, _x.Ankle, _x.gyr_y_aft,) = _get_struct_4f().unpack(str[start:end])
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
      buff.write(_get_struct_4f().pack(_x.Kp, _x.Kd, _x.Ankle, _x.gyr_y_aft))
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
      (_x.Kp, _x.Kd, _x.Ankle, _x.gyr_y_aft,) = _get_struct_4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
