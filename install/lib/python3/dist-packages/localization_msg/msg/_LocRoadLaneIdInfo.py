# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from localization_msg/LocRoadLaneIdInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LocRoadLaneIdInfo(genpy.Message):
  _md5sum = "6401b02517079499dbfd18d5fa820bef"
  _type = "localization_msg/LocRoadLaneIdInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 ur_id
uint32 tile_id
uint32 road_count
uint32 lane_id
uint16 reserved"""
  __slots__ = ['ur_id','tile_id','road_count','lane_id','reserved']
  _slot_types = ['uint16','uint32','uint32','uint32','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ur_id,tile_id,road_count,lane_id,reserved

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocRoadLaneIdInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ur_id is None:
        self.ur_id = 0
      if self.tile_id is None:
        self.tile_id = 0
      if self.road_count is None:
        self.road_count = 0
      if self.lane_id is None:
        self.lane_id = 0
      if self.reserved is None:
        self.reserved = 0
    else:
      self.ur_id = 0
      self.tile_id = 0
      self.road_count = 0
      self.lane_id = 0
      self.reserved = 0

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
      buff.write(_get_struct_H3IH().pack(_x.ur_id, _x.tile_id, _x.road_count, _x.lane_id, _x.reserved))
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
      end = 0
      _x = self
      start = end
      end += 16
      (_x.ur_id, _x.tile_id, _x.road_count, _x.lane_id, _x.reserved,) = _get_struct_H3IH().unpack(str[start:end])
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
      buff.write(_get_struct_H3IH().pack(_x.ur_id, _x.tile_id, _x.road_count, _x.lane_id, _x.reserved))
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
      end = 0
      _x = self
      start = end
      end += 16
      (_x.ur_id, _x.tile_id, _x.road_count, _x.lane_id, _x.reserved,) = _get_struct_H3IH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H3IH = None
def _get_struct_H3IH():
    global _struct_H3IH
    if _struct_H3IH is None:
        _struct_H3IH = struct.Struct("<H3IH")
    return _struct_H3IH