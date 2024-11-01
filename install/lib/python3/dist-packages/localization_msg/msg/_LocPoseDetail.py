# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from localization_msg/LocPoseDetail.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import localization_msg.msg

class LocPoseDetail(genpy.Message):
  _md5sum = "004458d6e21a0d465dbae5ebb975fba4"
  _type = "localization_msg/LocPoseDetail"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 available
LocPoseDetailInfo pose_detail_info
================================================================================
MSG: localization_msg/LocPoseDetailInfo
uint8 available
bool is_keyframe
bool has_scale
uint8 pose_type"""
  __slots__ = ['available','pose_detail_info']
  _slot_types = ['uint8','localization_msg/LocPoseDetailInfo']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       available,pose_detail_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocPoseDetail, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.available is None:
        self.available = 0
      if self.pose_detail_info is None:
        self.pose_detail_info = localization_msg.msg.LocPoseDetailInfo()
    else:
      self.available = 0
      self.pose_detail_info = localization_msg.msg.LocPoseDetailInfo()

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
      buff.write(_get_struct_5B().pack(_x.available, _x.pose_detail_info.available, _x.pose_detail_info.is_keyframe, _x.pose_detail_info.has_scale, _x.pose_detail_info.pose_type))
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
      if self.pose_detail_info is None:
        self.pose_detail_info = localization_msg.msg.LocPoseDetailInfo()
      end = 0
      _x = self
      start = end
      end += 5
      (_x.available, _x.pose_detail_info.available, _x.pose_detail_info.is_keyframe, _x.pose_detail_info.has_scale, _x.pose_detail_info.pose_type,) = _get_struct_5B().unpack(str[start:end])
      self.pose_detail_info.is_keyframe = bool(self.pose_detail_info.is_keyframe)
      self.pose_detail_info.has_scale = bool(self.pose_detail_info.has_scale)
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
      buff.write(_get_struct_5B().pack(_x.available, _x.pose_detail_info.available, _x.pose_detail_info.is_keyframe, _x.pose_detail_info.has_scale, _x.pose_detail_info.pose_type))
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
      if self.pose_detail_info is None:
        self.pose_detail_info = localization_msg.msg.LocPoseDetailInfo()
      end = 0
      _x = self
      start = end
      end += 5
      (_x.available, _x.pose_detail_info.available, _x.pose_detail_info.is_keyframe, _x.pose_detail_info.has_scale, _x.pose_detail_info.pose_type,) = _get_struct_5B().unpack(str[start:end])
      self.pose_detail_info.is_keyframe = bool(self.pose_detail_info.is_keyframe)
      self.pose_detail_info.has_scale = bool(self.pose_detail_info.has_scale)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5B = None
def _get_struct_5B():
    global _struct_5B
    if _struct_5B is None:
        _struct_5B = struct.Struct("<5B")
    return _struct_5B