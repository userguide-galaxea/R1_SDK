# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from localization_msg/LocTransform.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import localization_msg.msg

class LocTransform(genpy.Message):
  _md5sum = "3d6a2de0b6a829c7a528510f80cc997a"
  _type = "localization_msg/LocTransform"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 available
LocTransformInfo transform_llh_to_boot
LocTransformInfo transform_avp_map_to_boot
LocTransformInfo transform_ego_motion_to_boot
================================================================================
MSG: localization_msg/LocTransformInfo
LocQuaternion transform_q
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
  __slots__ = ['available','transform_llh_to_boot','transform_avp_map_to_boot','transform_ego_motion_to_boot']
  _slot_types = ['uint8','localization_msg/LocTransformInfo','localization_msg/LocTransformInfo','localization_msg/LocTransformInfo']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       available,transform_llh_to_boot,transform_avp_map_to_boot,transform_ego_motion_to_boot

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocTransform, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.available is None:
        self.available = 0
      if self.transform_llh_to_boot is None:
        self.transform_llh_to_boot = localization_msg.msg.LocTransformInfo()
      if self.transform_avp_map_to_boot is None:
        self.transform_avp_map_to_boot = localization_msg.msg.LocTransformInfo()
      if self.transform_ego_motion_to_boot is None:
        self.transform_ego_motion_to_boot = localization_msg.msg.LocTransformInfo()
    else:
      self.available = 0
      self.transform_llh_to_boot = localization_msg.msg.LocTransformInfo()
      self.transform_avp_map_to_boot = localization_msg.msg.LocTransformInfo()
      self.transform_ego_motion_to_boot = localization_msg.msg.LocTransformInfo()

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
      buff.write(_get_struct_B30d().pack(_x.available, _x.transform_llh_to_boot.transform_q.w, _x.transform_llh_to_boot.transform_q.x, _x.transform_llh_to_boot.transform_q.y, _x.transform_llh_to_boot.transform_q.z, _x.transform_llh_to_boot.transform_t.x, _x.transform_llh_to_boot.transform_t.y, _x.transform_llh_to_boot.transform_t.z, _x.transform_llh_to_boot.transform_center.x, _x.transform_llh_to_boot.transform_center.y, _x.transform_llh_to_boot.transform_center.z, _x.transform_avp_map_to_boot.transform_q.w, _x.transform_avp_map_to_boot.transform_q.x, _x.transform_avp_map_to_boot.transform_q.y, _x.transform_avp_map_to_boot.transform_q.z, _x.transform_avp_map_to_boot.transform_t.x, _x.transform_avp_map_to_boot.transform_t.y, _x.transform_avp_map_to_boot.transform_t.z, _x.transform_avp_map_to_boot.transform_center.x, _x.transform_avp_map_to_boot.transform_center.y, _x.transform_avp_map_to_boot.transform_center.z, _x.transform_ego_motion_to_boot.transform_q.w, _x.transform_ego_motion_to_boot.transform_q.x, _x.transform_ego_motion_to_boot.transform_q.y, _x.transform_ego_motion_to_boot.transform_q.z, _x.transform_ego_motion_to_boot.transform_t.x, _x.transform_ego_motion_to_boot.transform_t.y, _x.transform_ego_motion_to_boot.transform_t.z, _x.transform_ego_motion_to_boot.transform_center.x, _x.transform_ego_motion_to_boot.transform_center.y, _x.transform_ego_motion_to_boot.transform_center.z))
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
      if self.transform_llh_to_boot is None:
        self.transform_llh_to_boot = localization_msg.msg.LocTransformInfo()
      if self.transform_avp_map_to_boot is None:
        self.transform_avp_map_to_boot = localization_msg.msg.LocTransformInfo()
      if self.transform_ego_motion_to_boot is None:
        self.transform_ego_motion_to_boot = localization_msg.msg.LocTransformInfo()
      end = 0
      _x = self
      start = end
      end += 241
      (_x.available, _x.transform_llh_to_boot.transform_q.w, _x.transform_llh_to_boot.transform_q.x, _x.transform_llh_to_boot.transform_q.y, _x.transform_llh_to_boot.transform_q.z, _x.transform_llh_to_boot.transform_t.x, _x.transform_llh_to_boot.transform_t.y, _x.transform_llh_to_boot.transform_t.z, _x.transform_llh_to_boot.transform_center.x, _x.transform_llh_to_boot.transform_center.y, _x.transform_llh_to_boot.transform_center.z, _x.transform_avp_map_to_boot.transform_q.w, _x.transform_avp_map_to_boot.transform_q.x, _x.transform_avp_map_to_boot.transform_q.y, _x.transform_avp_map_to_boot.transform_q.z, _x.transform_avp_map_to_boot.transform_t.x, _x.transform_avp_map_to_boot.transform_t.y, _x.transform_avp_map_to_boot.transform_t.z, _x.transform_avp_map_to_boot.transform_center.x, _x.transform_avp_map_to_boot.transform_center.y, _x.transform_avp_map_to_boot.transform_center.z, _x.transform_ego_motion_to_boot.transform_q.w, _x.transform_ego_motion_to_boot.transform_q.x, _x.transform_ego_motion_to_boot.transform_q.y, _x.transform_ego_motion_to_boot.transform_q.z, _x.transform_ego_motion_to_boot.transform_t.x, _x.transform_ego_motion_to_boot.transform_t.y, _x.transform_ego_motion_to_boot.transform_t.z, _x.transform_ego_motion_to_boot.transform_center.x, _x.transform_ego_motion_to_boot.transform_center.y, _x.transform_ego_motion_to_boot.transform_center.z,) = _get_struct_B30d().unpack(str[start:end])
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
      buff.write(_get_struct_B30d().pack(_x.available, _x.transform_llh_to_boot.transform_q.w, _x.transform_llh_to_boot.transform_q.x, _x.transform_llh_to_boot.transform_q.y, _x.transform_llh_to_boot.transform_q.z, _x.transform_llh_to_boot.transform_t.x, _x.transform_llh_to_boot.transform_t.y, _x.transform_llh_to_boot.transform_t.z, _x.transform_llh_to_boot.transform_center.x, _x.transform_llh_to_boot.transform_center.y, _x.transform_llh_to_boot.transform_center.z, _x.transform_avp_map_to_boot.transform_q.w, _x.transform_avp_map_to_boot.transform_q.x, _x.transform_avp_map_to_boot.transform_q.y, _x.transform_avp_map_to_boot.transform_q.z, _x.transform_avp_map_to_boot.transform_t.x, _x.transform_avp_map_to_boot.transform_t.y, _x.transform_avp_map_to_boot.transform_t.z, _x.transform_avp_map_to_boot.transform_center.x, _x.transform_avp_map_to_boot.transform_center.y, _x.transform_avp_map_to_boot.transform_center.z, _x.transform_ego_motion_to_boot.transform_q.w, _x.transform_ego_motion_to_boot.transform_q.x, _x.transform_ego_motion_to_boot.transform_q.y, _x.transform_ego_motion_to_boot.transform_q.z, _x.transform_ego_motion_to_boot.transform_t.x, _x.transform_ego_motion_to_boot.transform_t.y, _x.transform_ego_motion_to_boot.transform_t.z, _x.transform_ego_motion_to_boot.transform_center.x, _x.transform_ego_motion_to_boot.transform_center.y, _x.transform_ego_motion_to_boot.transform_center.z))
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
      if self.transform_llh_to_boot is None:
        self.transform_llh_to_boot = localization_msg.msg.LocTransformInfo()
      if self.transform_avp_map_to_boot is None:
        self.transform_avp_map_to_boot = localization_msg.msg.LocTransformInfo()
      if self.transform_ego_motion_to_boot is None:
        self.transform_ego_motion_to_boot = localization_msg.msg.LocTransformInfo()
      end = 0
      _x = self
      start = end
      end += 241
      (_x.available, _x.transform_llh_to_boot.transform_q.w, _x.transform_llh_to_boot.transform_q.x, _x.transform_llh_to_boot.transform_q.y, _x.transform_llh_to_boot.transform_q.z, _x.transform_llh_to_boot.transform_t.x, _x.transform_llh_to_boot.transform_t.y, _x.transform_llh_to_boot.transform_t.z, _x.transform_llh_to_boot.transform_center.x, _x.transform_llh_to_boot.transform_center.y, _x.transform_llh_to_boot.transform_center.z, _x.transform_avp_map_to_boot.transform_q.w, _x.transform_avp_map_to_boot.transform_q.x, _x.transform_avp_map_to_boot.transform_q.y, _x.transform_avp_map_to_boot.transform_q.z, _x.transform_avp_map_to_boot.transform_t.x, _x.transform_avp_map_to_boot.transform_t.y, _x.transform_avp_map_to_boot.transform_t.z, _x.transform_avp_map_to_boot.transform_center.x, _x.transform_avp_map_to_boot.transform_center.y, _x.transform_avp_map_to_boot.transform_center.z, _x.transform_ego_motion_to_boot.transform_q.w, _x.transform_ego_motion_to_boot.transform_q.x, _x.transform_ego_motion_to_boot.transform_q.y, _x.transform_ego_motion_to_boot.transform_q.z, _x.transform_ego_motion_to_boot.transform_t.x, _x.transform_ego_motion_to_boot.transform_t.y, _x.transform_ego_motion_to_boot.transform_t.z, _x.transform_ego_motion_to_boot.transform_center.x, _x.transform_ego_motion_to_boot.transform_center.y, _x.transform_ego_motion_to_boot.transform_center.z,) = _get_struct_B30d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B30d = None
def _get_struct_B30d():
    global _struct_B30d
    if _struct_B30d is None:
        _struct_B30d = struct.Struct("<B30d")
    return _struct_B30d
