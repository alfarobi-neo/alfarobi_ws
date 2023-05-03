# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from humanoid_league_msgs/LineInformationInImage.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import humanoid_league_msgs.msg
import std_msgs.msg

class LineInformationInImage(genpy.Message):
  _md5sum = "0046bff18564d1ff259c25b80b246444"
  _type = "humanoid_league_msgs/LineInformationInImage"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# Contains all line related information on the image itself

# The header is included to get the time stamp for later use in tf
std_msgs/Header header

LineIntersectionInImage[] intersections
LineSegmentInImage[] segments
LineCircleInImage[] circles
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: humanoid_league_msgs/LineIntersectionInImage
# A line intersection feature in the image

# The type defines which kind of intersection is present
uint8 UNDEFINED=0
uint8 L=1
uint8 T=2
uint8 X=3
uint8 type

# The line segments related to this crossing
humanoid_league_msgs/LineSegmentInImage segments

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

================================================================================
MSG: humanoid_league_msgs/LineSegmentInImage
# A normal line segment in the image

# Two points defining the vector of the line. The center is orthogonally in the middle of the line
geometry_msgs/Point start
geometry_msgs/Point end

# Orthogonal to the significant vector
float32 start_width
float32 end_with

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: humanoid_league_msgs/LineCircleInImage
# Defines a line circle in image space, i.e. the center circle

# The circle is defined by an arc with left and right end points and a point in the middle for getting the radius
geometry_msgs/Point left
geometry_msgs/Point middle
geometry_msgs/Point right

"""
  __slots__ = ['header','intersections','segments','circles']
  _slot_types = ['std_msgs/Header','humanoid_league_msgs/LineIntersectionInImage[]','humanoid_league_msgs/LineSegmentInImage[]','humanoid_league_msgs/LineCircleInImage[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,intersections,segments,circles

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LineInformationInImage, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.intersections is None:
        self.intersections = []
      if self.segments is None:
        self.segments = []
      if self.circles is None:
        self.circles = []
    else:
      self.header = std_msgs.msg.Header()
      self.intersections = []
      self.segments = []
      self.circles = []

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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.intersections)
      buff.write(_struct_I.pack(length))
      for val1 in self.intersections:
        _x = val1.type
        buff.write(_get_struct_B().pack(_x))
        _v1 = val1.segments
        _v2 = _v1.start
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = _v1.end
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v1
        buff.write(_get_struct_3f().pack(_x.start_width, _x.end_with, _x.confidence))
        _x = val1.confidence
        buff.write(_get_struct_f().pack(_x))
      length = len(self.segments)
      buff.write(_struct_I.pack(length))
      for val1 in self.segments:
        _v4 = val1.start
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = val1.end
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_3f().pack(_x.start_width, _x.end_with, _x.confidence))
      length = len(self.circles)
      buff.write(_struct_I.pack(length))
      for val1 in self.circles:
        _v6 = val1.left
        _x = _v6
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v7 = val1.middle
        _x = _v7
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v8 = val1.right
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.intersections is None:
        self.intersections = None
      if self.segments is None:
        self.segments = None
      if self.circles is None:
        self.circles = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.intersections = []
      for i in range(0, length):
        val1 = humanoid_league_msgs.msg.LineIntersectionInImage()
        start = end
        end += 1
        (val1.type,) = _get_struct_B().unpack(str[start:end])
        _v9 = val1.segments
        _v10 = _v9.start
        _x = _v10
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v11 = _v9.end
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = _v9
        start = end
        end += 12
        (_x.start_width, _x.end_with, _x.confidence,) = _get_struct_3f().unpack(str[start:end])
        start = end
        end += 4
        (val1.confidence,) = _get_struct_f().unpack(str[start:end])
        self.intersections.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.segments = []
      for i in range(0, length):
        val1 = humanoid_league_msgs.msg.LineSegmentInImage()
        _v12 = val1.start
        _x = _v12
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v13 = val1.end
        _x = _v13
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 12
        (_x.start_width, _x.end_with, _x.confidence,) = _get_struct_3f().unpack(str[start:end])
        self.segments.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.circles = []
      for i in range(0, length):
        val1 = humanoid_league_msgs.msg.LineCircleInImage()
        _v14 = val1.left
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = val1.middle
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v16 = val1.right
        _x = _v16
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.circles.append(val1)
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
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.intersections)
      buff.write(_struct_I.pack(length))
      for val1 in self.intersections:
        _x = val1.type
        buff.write(_get_struct_B().pack(_x))
        _v17 = val1.segments
        _v18 = _v17.start
        _x = _v18
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v19 = _v17.end
        _x = _v19
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = _v17
        buff.write(_get_struct_3f().pack(_x.start_width, _x.end_with, _x.confidence))
        _x = val1.confidence
        buff.write(_get_struct_f().pack(_x))
      length = len(self.segments)
      buff.write(_struct_I.pack(length))
      for val1 in self.segments:
        _v20 = val1.start
        _x = _v20
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v21 = val1.end
        _x = _v21
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_3f().pack(_x.start_width, _x.end_with, _x.confidence))
      length = len(self.circles)
      buff.write(_struct_I.pack(length))
      for val1 in self.circles:
        _v22 = val1.left
        _x = _v22
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v23 = val1.middle
        _x = _v23
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v24 = val1.right
        _x = _v24
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.intersections is None:
        self.intersections = None
      if self.segments is None:
        self.segments = None
      if self.circles is None:
        self.circles = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.intersections = []
      for i in range(0, length):
        val1 = humanoid_league_msgs.msg.LineIntersectionInImage()
        start = end
        end += 1
        (val1.type,) = _get_struct_B().unpack(str[start:end])
        _v25 = val1.segments
        _v26 = _v25.start
        _x = _v26
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v27 = _v25.end
        _x = _v27
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = _v25
        start = end
        end += 12
        (_x.start_width, _x.end_with, _x.confidence,) = _get_struct_3f().unpack(str[start:end])
        start = end
        end += 4
        (val1.confidence,) = _get_struct_f().unpack(str[start:end])
        self.intersections.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.segments = []
      for i in range(0, length):
        val1 = humanoid_league_msgs.msg.LineSegmentInImage()
        _v28 = val1.start
        _x = _v28
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v29 = val1.end
        _x = _v29
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 12
        (_x.start_width, _x.end_with, _x.confidence,) = _get_struct_3f().unpack(str[start:end])
        self.segments.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.circles = []
      for i in range(0, length):
        val1 = humanoid_league_msgs.msg.LineCircleInImage()
        _v30 = val1.left
        _x = _v30
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v31 = val1.middle
        _x = _v31
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v32 = val1.right
        _x = _v32
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.circles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
