# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vision_utils/MonitorUtils.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class MonitorUtils(genpy.Message):
  _md5sum = "849debddb0d7bc3d689fc3c60819829e"
  _type = "vision_utils/MonitorUtils"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Vector3[] line_models
geometry_msgs/Quaternion[] particles


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['line_models','particles']
  _slot_types = ['geometry_msgs/Vector3[]','geometry_msgs/Quaternion[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       line_models,particles

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MonitorUtils, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.line_models is None:
        self.line_models = []
      if self.particles is None:
        self.particles = []
    else:
      self.line_models = []
      self.particles = []

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
      length = len(self.line_models)
      buff.write(_struct_I.pack(length))
      for val1 in self.line_models:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.particles)
      buff.write(_struct_I.pack(length))
      for val1 in self.particles:
        _x = val1
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.line_models is None:
        self.line_models = None
      if self.particles is None:
        self.particles = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.line_models = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Vector3()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.line_models.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.particles = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Quaternion()
        _x = val1
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.particles.append(val1)
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
      length = len(self.line_models)
      buff.write(_struct_I.pack(length))
      for val1 in self.line_models:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.particles)
      buff.write(_struct_I.pack(length))
      for val1 in self.particles:
        _x = val1
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
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
      if self.line_models is None:
        self.line_models = None
      if self.particles is None:
        self.particles = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.line_models = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Vector3()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.line_models.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.particles = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Quaternion()
        _x = val1
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.particles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d