# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dnn_detector/GetParametersRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetParametersRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "dnn_detector/GetParametersRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """
"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetParametersRequest, self).__init__(*args, **kwds)

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
      pass
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
      pass
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
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dnn_detector/GetParametersResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dnn_detector.msg

class GetParametersResponse(genpy.Message):
  _md5sum = "d743da2bf12d518097400e47c74397a3"
  _type = "dnn_detector/GetParametersResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """DnnDetectorParams  returns


================================================================================
MSG: dnn_detector/DnnDetectorParams
# This represents the parameters of ball_detector

uint32  scaling
float32 confidence
float32 mean_val
"""
  __slots__ = ['returns']
  _slot_types = ['dnn_detector/DnnDetectorParams']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       returns

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetParametersResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.returns is None:
        self.returns = dnn_detector.msg.DnnDetectorParams()
    else:
      self.returns = dnn_detector.msg.DnnDetectorParams()

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
      buff.write(_get_struct_I2f().pack(_x.returns.scaling, _x.returns.confidence, _x.returns.mean_val))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.returns is None:
        self.returns = dnn_detector.msg.DnnDetectorParams()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.returns.scaling, _x.returns.confidence, _x.returns.mean_val,) = _get_struct_I2f().unpack(str[start:end])
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
      buff.write(_get_struct_I2f().pack(_x.returns.scaling, _x.returns.confidence, _x.returns.mean_val))
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
      if self.returns is None:
        self.returns = dnn_detector.msg.DnnDetectorParams()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.returns.scaling, _x.returns.confidence, _x.returns.mean_val,) = _get_struct_I2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I2f = None
def _get_struct_I2f():
    global _struct_I2f
    if _struct_I2f is None:
        _struct_I2f = struct.Struct("<I2f")
    return _struct_I2f
class GetParameters(object):
  _type          = 'dnn_detector/GetParameters'
  _md5sum = 'd743da2bf12d518097400e47c74397a3'
  _request_class  = GetParametersRequest
  _response_class = GetParametersResponse
