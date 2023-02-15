# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mcl_localization/localization_param.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class localization_param(genpy.Message):
  _md5sum = "8a9ad945fdf7665608477890478ed39f"
  _type = "mcl_localization/localization_param"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 mcl_afast
float64 mcl_aslow
float64 mcl_variance
float64 mgauss_x
float64 mgauss_y
float64 mgauss_w
float64 vgauss_x
float64 vgauss_y
float64 mcl_wcmps
"""
  __slots__ = ['mcl_afast','mcl_aslow','mcl_variance','mgauss_x','mgauss_y','mgauss_w','vgauss_x','vgauss_y','mcl_wcmps']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       mcl_afast,mcl_aslow,mcl_variance,mgauss_x,mgauss_y,mgauss_w,vgauss_x,vgauss_y,mcl_wcmps

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(localization_param, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.mcl_afast is None:
        self.mcl_afast = 0.
      if self.mcl_aslow is None:
        self.mcl_aslow = 0.
      if self.mcl_variance is None:
        self.mcl_variance = 0.
      if self.mgauss_x is None:
        self.mgauss_x = 0.
      if self.mgauss_y is None:
        self.mgauss_y = 0.
      if self.mgauss_w is None:
        self.mgauss_w = 0.
      if self.vgauss_x is None:
        self.vgauss_x = 0.
      if self.vgauss_y is None:
        self.vgauss_y = 0.
      if self.mcl_wcmps is None:
        self.mcl_wcmps = 0.
    else:
      self.mcl_afast = 0.
      self.mcl_aslow = 0.
      self.mcl_variance = 0.
      self.mgauss_x = 0.
      self.mgauss_y = 0.
      self.mgauss_w = 0.
      self.vgauss_x = 0.
      self.vgauss_y = 0.
      self.mcl_wcmps = 0.

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
      buff.write(_get_struct_9d().pack(_x.mcl_afast, _x.mcl_aslow, _x.mcl_variance, _x.mgauss_x, _x.mgauss_y, _x.mgauss_w, _x.vgauss_x, _x.vgauss_y, _x.mcl_wcmps))
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
      end += 72
      (_x.mcl_afast, _x.mcl_aslow, _x.mcl_variance, _x.mgauss_x, _x.mgauss_y, _x.mgauss_w, _x.vgauss_x, _x.vgauss_y, _x.mcl_wcmps,) = _get_struct_9d().unpack(str[start:end])
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
      buff.write(_get_struct_9d().pack(_x.mcl_afast, _x.mcl_aslow, _x.mcl_variance, _x.mgauss_x, _x.mgauss_y, _x.mgauss_w, _x.vgauss_x, _x.vgauss_y, _x.mcl_wcmps))
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
      end += 72
      (_x.mcl_afast, _x.mcl_aslow, _x.mcl_variance, _x.mgauss_x, _x.mgauss_y, _x.mgauss_w, _x.vgauss_x, _x.vgauss_y, _x.mcl_wcmps,) = _get_struct_9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
