#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "pinocchio::pinocchio" for configuration "RelWithDebInfo"
set_property(TARGET pinocchio::pinocchio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(pinocchio::pinocchio PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "/usr/lib/aarch64-linux-gnu/libboost_filesystem.so;/usr/lib/aarch64-linux-gnu/libboost_system.so;/usr/lib/aarch64-linux-gnu/libboost_serialization.so;/usr/lib/aarch64-linux-gnu/liburdfdom_sensor.so;/usr/lib/aarch64-linux-gnu/liburdfdom_model_state.so;/usr/lib/aarch64-linux-gnu/liburdfdom_model.so;/usr/lib/aarch64-linux-gnu/liburdfdom_world.so;console_bridge::console_bridge;hpp-fcl::hpp-fcl"
  IMPORTED_LOCATION_RELWITHDEBINFO "/home/nvidia/work/ci_pipeline/workspace/body/install/lib/libpinocchio.so.2.5.1"
  IMPORTED_SONAME_RELWITHDEBINFO "libpinocchio.so.2.5.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS pinocchio::pinocchio )
list(APPEND _IMPORT_CHECK_FILES_FOR_pinocchio::pinocchio "/home/nvidia/work/ci_pipeline/workspace/body/install/lib/libpinocchio.so.2.5.1" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
