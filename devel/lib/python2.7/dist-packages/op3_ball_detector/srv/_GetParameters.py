# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from op3_ball_detector/GetParametersRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetParametersRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "op3_ball_detector/GetParametersRequest"
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
"""autogenerated by genpy from op3_ball_detector/GetParametersResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import op3_ball_detector.msg

class GetParametersResponse(genpy.Message):
  _md5sum = "17229f06a68a0d87fd525e4d8bdaee90"
  _type = "op3_ball_detector/GetParametersResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """BallDetectorParams  returns


================================================================================
MSG: op3_ball_detector/BallDetectorParams
# This represents the parameters of ball_detector

uint32  gaussian_blur_size      # only odd number, 1 - 11
float32 gaussian_blur_sigma     # 1 - 5
float32 canny_edge_th           # 50 - 200
float32 hough_accum_resolution  # 1 - 8
float32 hough_accum_th          # 10 - 200
float32 min_circle_dist         # 10 - 200
uint32  min_radius              # 10 - 200
uint32  max_radius              # 100 - 600
uint32  filter_h_min            # 0 - 359
uint32  filter_h_max
uint32  filter_s_min            # 0 - 255
uint32  filter_s_max
uint32  filter_v_min            # 0 - 255
uint32  filter_v_max
uint32  ellipse_size            # 1 - 9
"""
  __slots__ = ['returns']
  _slot_types = ['op3_ball_detector/BallDetectorParams']

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
        self.returns = op3_ball_detector.msg.BallDetectorParams()
    else:
      self.returns = op3_ball_detector.msg.BallDetectorParams()

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
      buff.write(_get_struct_I5f9I().pack(_x.returns.gaussian_blur_size, _x.returns.gaussian_blur_sigma, _x.returns.canny_edge_th, _x.returns.hough_accum_resolution, _x.returns.hough_accum_th, _x.returns.min_circle_dist, _x.returns.min_radius, _x.returns.max_radius, _x.returns.filter_h_min, _x.returns.filter_h_max, _x.returns.filter_s_min, _x.returns.filter_s_max, _x.returns.filter_v_min, _x.returns.filter_v_max, _x.returns.ellipse_size))
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
        self.returns = op3_ball_detector.msg.BallDetectorParams()
      end = 0
      _x = self
      start = end
      end += 60
      (_x.returns.gaussian_blur_size, _x.returns.gaussian_blur_sigma, _x.returns.canny_edge_th, _x.returns.hough_accum_resolution, _x.returns.hough_accum_th, _x.returns.min_circle_dist, _x.returns.min_radius, _x.returns.max_radius, _x.returns.filter_h_min, _x.returns.filter_h_max, _x.returns.filter_s_min, _x.returns.filter_s_max, _x.returns.filter_v_min, _x.returns.filter_v_max, _x.returns.ellipse_size,) = _get_struct_I5f9I().unpack(str[start:end])
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
      buff.write(_get_struct_I5f9I().pack(_x.returns.gaussian_blur_size, _x.returns.gaussian_blur_sigma, _x.returns.canny_edge_th, _x.returns.hough_accum_resolution, _x.returns.hough_accum_th, _x.returns.min_circle_dist, _x.returns.min_radius, _x.returns.max_radius, _x.returns.filter_h_min, _x.returns.filter_h_max, _x.returns.filter_s_min, _x.returns.filter_s_max, _x.returns.filter_v_min, _x.returns.filter_v_max, _x.returns.ellipse_size))
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
        self.returns = op3_ball_detector.msg.BallDetectorParams()
      end = 0
      _x = self
      start = end
      end += 60
      (_x.returns.gaussian_blur_size, _x.returns.gaussian_blur_sigma, _x.returns.canny_edge_th, _x.returns.hough_accum_resolution, _x.returns.hough_accum_th, _x.returns.min_circle_dist, _x.returns.min_radius, _x.returns.max_radius, _x.returns.filter_h_min, _x.returns.filter_h_max, _x.returns.filter_s_min, _x.returns.filter_s_max, _x.returns.filter_v_min, _x.returns.filter_v_max, _x.returns.ellipse_size,) = _get_struct_I5f9I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I5f9I = None
def _get_struct_I5f9I():
    global _struct_I5f9I
    if _struct_I5f9I is None:
        _struct_I5f9I = struct.Struct("<I5f9I")
    return _struct_I5f9I
class GetParameters(object):
  _type          = 'op3_ball_detector/GetParameters'
  _md5sum = '17229f06a68a0d87fd525e4d8bdaee90'
  _request_class  = GetParametersRequest
  _response_class = GetParametersResponse
