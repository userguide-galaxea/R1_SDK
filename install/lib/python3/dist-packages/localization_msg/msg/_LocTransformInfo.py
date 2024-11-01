# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from localization_msg/LocTransformInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import localization_msg.msg

class LocTransformInfo(genpy.Message):
  _md5sum = "9b46b84084dc9d2a0fe41cb847809c2e"
  _type = "localization_msg/LocTransformInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """LocQuaternion transform_q
LocPosLocal transform_t
LocPosGlobal transform_center
================================================================================
MSG: localization_msg/LocQuaternion
float64 w
float64 x
float64 y
float64 z
================================================================================
MSG: localization_msg/LocPosLocal
float64 x
float64 y
float64 z
================================================================================
MSG: localization_msg/LocPosGlobal
float64 x
float64 y
float64 z"""
  __slots__ = ['transform_q','transform_t','transform_center']
  _slot_types = ['localization_msg/LocQuaternion','localization_msg/LocPosLocal','localization_msg/LocPosGlobal']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       transform_q,transform_t,transform_center

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocTransformInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.transform_q is None:
        self.transform_q = localization_msg.msg.LocQuaternion()
      if self.transform_t is None:
        self.transform_t = localization_msg.msg.LocPosLocal()
      if self.transform_center is None:
        self.transform_center = localization_msg.msg.LocPosGlobal()
    else:
      self.transform_q = localization_msg.msg.LocQuaternion()
      self.transform_t = localization_msg.msg.LocPosLocal()
      self.transform_center = localization_msg.msg.LocPosGlobal()

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
      buff.write(_get_struct_10d().pack(_x.transform_q.w, _x.transform_q.x, _x.transform_q.y, _x.transform_q.z, _x.transform_t.x, _x.transform_t.y, _x.transform_t.z, _x.transform_center.x, _x.transform_center.y, _x.transform_center.z))
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
      if self.transform_q is None:
        self.transform_q = localization_msg.msg.LocQuaternion()
      if self.transform_t is None:
        self.transform_t = localization_msg.msg.LocPosLocal()
      if self.transform_center is None:
        self.transform_center = localization_msg.msg.LocPosGlobal()
      end = 0
      _x = self
      start = end
      end += 80
      (_x.transform_q.w, _x.transform_q.x, _x.transform_q.y, _x.transform_q.z, _x.transform_t.x, _x.transform_t.y, _x.transform_t.z, _x.transform_center.x, _x.transform_center.y, _x.transform_center.z,) = _get_struct_10d().unpack(str[start:end])
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
      buff.write(_get_struct_10d().pack(_x.transform_q.w, _x.transform_q.x, _x.transform_q.y, _x.transform_q.z, _x.transform_t.x, _x.transform_t.y, _x.transform_t.z, _x.transform_center.x, _x.transform_center.y, _x.transform_center.z))
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
      if self.transform_q is None:
        self.transform_q = localization_msg.msg.LocQuaternion()
      if self.transform_t is None:
        self.transform_t = localization_msg.msg.LocPosLocal()
      if self.transform_center is None:
        self.transform_center = localization_msg.msg.LocPosGlobal()
      end = 0
      _x = self
      start = end
      end += 80
      (_x.transform_q.w, _x.transform_q.x, _x.transform_q.y, _x.transform_q.z, _x.transform_t.x, _x.transform_t.y, _x.transform_t.z, _x.transform_center.x, _x.transform_center.y, _x.transform_center.z,) = _get_struct_10d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10d = None
def _get_struct_10d():
    global _struct_10d
    if _struct_10d is None:
        _struct_10d = struct.Struct("<10d")
    return _struct_10d
