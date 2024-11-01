# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ocs2_msgs/mpc_flattened_controller.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ocs2_msgs.msg

class mpc_flattened_controller(genpy.Message):
  _md5sum = "9355aadb2928f436a41799dd737c0f53"
  _type = "ocs2_msgs/mpc_flattened_controller"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Flattened controller: A serialized controller

# define controllerType Enum values
uint8 CONTROLLER_UNKNOWN=0 # safety mechanism: message initalization to zero
uint8 CONTROLLER_FEEDFORWARD=1
uint8 CONTROLLER_LINEAR=2

uint8                   controllerType         # what type of controller is this

mpc_observation         initObservation        # plan initial observation

mpc_target_trajectories planTargetTrajectories # target trajectory in cost function
mpc_state[]             stateTrajectory        # optimized state trajectory from planner
mpc_input[]             inputTrajectory        # optimized input trajectory from planner
float64[]               timeTrajectory         # time trajectory for stateTrajectory and inputTrajectory
uint16[]                postEventIndices       # array of indices indicating the index of post-event time in the trajectories
mode_schedule           modeSchedule           # optimal/predefined MPC mode sequence and event times

controller_data[]       data                   # the actual payload from flatten method: one vector of data per time step

mpc_performance_indices performanceIndices     # solver performance indices

================================================================================
MSG: ocs2_msgs/mpc_observation
# MPC observation
float64        time        # Current time
mpc_state      state       # Current state
mpc_input      input       # Current input
int8           mode        # Current mode

================================================================================
MSG: ocs2_msgs/mpc_state
# MPC internal model state vector
float32[] value

================================================================================
MSG: ocs2_msgs/mpc_input
# MPC internal model input vector 

float32[] value
================================================================================
MSG: ocs2_msgs/mpc_target_trajectories
# MPC target trajectories

float64[]    timeTrajectory        # MPC target time trajectory
mpc_state[]  stateTrajectory       # MPC target state trajectory
mpc_input[]  inputTrajectory       # MPC target input trajectory


================================================================================
MSG: ocs2_msgs/mode_schedule
# MPC mode sequence

float64[] eventTimes           # event times: its size is equal to the size of phaseSequence minus one
int8[]    modeSequence         # mode sequence: e.g., for a quadrupedal robot, it is in the set {0, 1,..., 15}
================================================================================
MSG: ocs2_msgs/controller_data
float32[] data

================================================================================
MSG: ocs2_msgs/mpc_performance_indices
# MPC performance indices
float32     initTime
float32     merit
float32     cost
float32     dynamicsViolationSSE
float32     equalityConstraintsSSE
float32     equalityLagrangian
float32     inequalityLagrangian
"""
  # Pseudo-constants
  CONTROLLER_UNKNOWN = 0
  CONTROLLER_FEEDFORWARD = 1
  CONTROLLER_LINEAR = 2

  __slots__ = ['controllerType','initObservation','planTargetTrajectories','stateTrajectory','inputTrajectory','timeTrajectory','postEventIndices','modeSchedule','data','performanceIndices']
  _slot_types = ['uint8','ocs2_msgs/mpc_observation','ocs2_msgs/mpc_target_trajectories','ocs2_msgs/mpc_state[]','ocs2_msgs/mpc_input[]','float64[]','uint16[]','ocs2_msgs/mode_schedule','ocs2_msgs/controller_data[]','ocs2_msgs/mpc_performance_indices']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       controllerType,initObservation,planTargetTrajectories,stateTrajectory,inputTrajectory,timeTrajectory,postEventIndices,modeSchedule,data,performanceIndices

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(mpc_flattened_controller, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.controllerType is None:
        self.controllerType = 0
      if self.initObservation is None:
        self.initObservation = ocs2_msgs.msg.mpc_observation()
      if self.planTargetTrajectories is None:
        self.planTargetTrajectories = ocs2_msgs.msg.mpc_target_trajectories()
      if self.stateTrajectory is None:
        self.stateTrajectory = []
      if self.inputTrajectory is None:
        self.inputTrajectory = []
      if self.timeTrajectory is None:
        self.timeTrajectory = []
      if self.postEventIndices is None:
        self.postEventIndices = []
      if self.modeSchedule is None:
        self.modeSchedule = ocs2_msgs.msg.mode_schedule()
      if self.data is None:
        self.data = []
      if self.performanceIndices is None:
        self.performanceIndices = ocs2_msgs.msg.mpc_performance_indices()
    else:
      self.controllerType = 0
      self.initObservation = ocs2_msgs.msg.mpc_observation()
      self.planTargetTrajectories = ocs2_msgs.msg.mpc_target_trajectories()
      self.stateTrajectory = []
      self.inputTrajectory = []
      self.timeTrajectory = []
      self.postEventIndices = []
      self.modeSchedule = ocs2_msgs.msg.mode_schedule()
      self.data = []
      self.performanceIndices = ocs2_msgs.msg.mpc_performance_indices()

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
      buff.write(_get_struct_Bd().pack(_x.controllerType, _x.initObservation.time))
      length = len(self.initObservation.state.value)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.initObservation.state.value))
      length = len(self.initObservation.input.value)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.initObservation.input.value))
      _x = self.initObservation.mode
      buff.write(_get_struct_b().pack(_x))
      length = len(self.planTargetTrajectories.timeTrajectory)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.planTargetTrajectories.timeTrajectory))
      length = len(self.planTargetTrajectories.stateTrajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.planTargetTrajectories.stateTrajectory:
        length = len(val1.value)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.value))
      length = len(self.planTargetTrajectories.inputTrajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.planTargetTrajectories.inputTrajectory:
        length = len(val1.value)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.value))
      length = len(self.stateTrajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.stateTrajectory:
        length = len(val1.value)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.value))
      length = len(self.inputTrajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.inputTrajectory:
        length = len(val1.value)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.value))
      length = len(self.timeTrajectory)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.timeTrajectory))
      length = len(self.postEventIndices)
      buff.write(_struct_I.pack(length))
      pattern = '<%sH'%length
      buff.write(struct.Struct(pattern).pack(*self.postEventIndices))
      length = len(self.modeSchedule.eventTimes)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.modeSchedule.eventTimes))
      length = len(self.modeSchedule.modeSequence)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.Struct(pattern).pack(*self.modeSchedule.modeSequence))
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      for val1 in self.data:
        length = len(val1.data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.data))
      _x = self
      buff.write(_get_struct_7f().pack(_x.performanceIndices.initTime, _x.performanceIndices.merit, _x.performanceIndices.cost, _x.performanceIndices.dynamicsViolationSSE, _x.performanceIndices.equalityConstraintsSSE, _x.performanceIndices.equalityLagrangian, _x.performanceIndices.inequalityLagrangian))
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
      if self.initObservation is None:
        self.initObservation = ocs2_msgs.msg.mpc_observation()
      if self.planTargetTrajectories is None:
        self.planTargetTrajectories = ocs2_msgs.msg.mpc_target_trajectories()
      if self.stateTrajectory is None:
        self.stateTrajectory = None
      if self.inputTrajectory is None:
        self.inputTrajectory = None
      if self.modeSchedule is None:
        self.modeSchedule = ocs2_msgs.msg.mode_schedule()
      if self.data is None:
        self.data = None
      if self.performanceIndices is None:
        self.performanceIndices = ocs2_msgs.msg.mpc_performance_indices()
      end = 0
      _x = self
      start = end
      end += 9
      (_x.controllerType, _x.initObservation.time,) = _get_struct_Bd().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.initObservation.state.value = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.initObservation.input.value = s.unpack(str[start:end])
      start = end
      end += 1
      (self.initObservation.mode,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.planTargetTrajectories.timeTrajectory = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.planTargetTrajectories.stateTrajectory = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.mpc_state()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.value = s.unpack(str[start:end])
        self.planTargetTrajectories.stateTrajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.planTargetTrajectories.inputTrajectory = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.mpc_input()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.value = s.unpack(str[start:end])
        self.planTargetTrajectories.inputTrajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.stateTrajectory = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.mpc_state()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.value = s.unpack(str[start:end])
        self.stateTrajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.inputTrajectory = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.mpc_input()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.value = s.unpack(str[start:end])
        self.inputTrajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.timeTrajectory = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sH'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.postEventIndices = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.modeSchedule.eventTimes = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.modeSchedule.modeSequence = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.data = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.controller_data()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.data = s.unpack(str[start:end])
        self.data.append(val1)
      _x = self
      start = end
      end += 28
      (_x.performanceIndices.initTime, _x.performanceIndices.merit, _x.performanceIndices.cost, _x.performanceIndices.dynamicsViolationSSE, _x.performanceIndices.equalityConstraintsSSE, _x.performanceIndices.equalityLagrangian, _x.performanceIndices.inequalityLagrangian,) = _get_struct_7f().unpack(str[start:end])
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
      buff.write(_get_struct_Bd().pack(_x.controllerType, _x.initObservation.time))
      length = len(self.initObservation.state.value)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.initObservation.state.value.tostring())
      length = len(self.initObservation.input.value)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.initObservation.input.value.tostring())
      _x = self.initObservation.mode
      buff.write(_get_struct_b().pack(_x))
      length = len(self.planTargetTrajectories.timeTrajectory)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.planTargetTrajectories.timeTrajectory.tostring())
      length = len(self.planTargetTrajectories.stateTrajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.planTargetTrajectories.stateTrajectory:
        length = len(val1.value)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.value.tostring())
      length = len(self.planTargetTrajectories.inputTrajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.planTargetTrajectories.inputTrajectory:
        length = len(val1.value)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.value.tostring())
      length = len(self.stateTrajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.stateTrajectory:
        length = len(val1.value)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.value.tostring())
      length = len(self.inputTrajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.inputTrajectory:
        length = len(val1.value)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.value.tostring())
      length = len(self.timeTrajectory)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.timeTrajectory.tostring())
      length = len(self.postEventIndices)
      buff.write(_struct_I.pack(length))
      pattern = '<%sH'%length
      buff.write(self.postEventIndices.tostring())
      length = len(self.modeSchedule.eventTimes)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.modeSchedule.eventTimes.tostring())
      length = len(self.modeSchedule.modeSequence)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.modeSchedule.modeSequence.tostring())
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      for val1 in self.data:
        length = len(val1.data)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.data.tostring())
      _x = self
      buff.write(_get_struct_7f().pack(_x.performanceIndices.initTime, _x.performanceIndices.merit, _x.performanceIndices.cost, _x.performanceIndices.dynamicsViolationSSE, _x.performanceIndices.equalityConstraintsSSE, _x.performanceIndices.equalityLagrangian, _x.performanceIndices.inequalityLagrangian))
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
      if self.initObservation is None:
        self.initObservation = ocs2_msgs.msg.mpc_observation()
      if self.planTargetTrajectories is None:
        self.planTargetTrajectories = ocs2_msgs.msg.mpc_target_trajectories()
      if self.stateTrajectory is None:
        self.stateTrajectory = None
      if self.inputTrajectory is None:
        self.inputTrajectory = None
      if self.modeSchedule is None:
        self.modeSchedule = ocs2_msgs.msg.mode_schedule()
      if self.data is None:
        self.data = None
      if self.performanceIndices is None:
        self.performanceIndices = ocs2_msgs.msg.mpc_performance_indices()
      end = 0
      _x = self
      start = end
      end += 9
      (_x.controllerType, _x.initObservation.time,) = _get_struct_Bd().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.initObservation.state.value = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.initObservation.input.value = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 1
      (self.initObservation.mode,) = _get_struct_b().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.planTargetTrajectories.timeTrajectory = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.planTargetTrajectories.stateTrajectory = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.mpc_state()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.value = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.planTargetTrajectories.stateTrajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.planTargetTrajectories.inputTrajectory = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.mpc_input()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.value = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.planTargetTrajectories.inputTrajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.stateTrajectory = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.mpc_state()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.value = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.stateTrajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.inputTrajectory = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.mpc_input()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.value = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.inputTrajectory.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.timeTrajectory = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sH'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.postEventIndices = numpy.frombuffer(str[start:end], dtype=numpy.uint16, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.modeSchedule.eventTimes = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.modeSchedule.modeSequence = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.data = []
      for i in range(0, length):
        val1 = ocs2_msgs.msg.controller_data()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.data = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.data.append(val1)
      _x = self
      start = end
      end += 28
      (_x.performanceIndices.initTime, _x.performanceIndices.merit, _x.performanceIndices.cost, _x.performanceIndices.dynamicsViolationSSE, _x.performanceIndices.equalityConstraintsSSE, _x.performanceIndices.equalityLagrangian, _x.performanceIndices.inequalityLagrangian,) = _get_struct_7f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7f = None
def _get_struct_7f():
    global _struct_7f
    if _struct_7f is None:
        _struct_7f = struct.Struct("<7f")
    return _struct_7f
_struct_Bd = None
def _get_struct_Bd():
    global _struct_Bd
    if _struct_Bd is None:
        _struct_Bd = struct.Struct("<Bd")
    return _struct_Bd
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
