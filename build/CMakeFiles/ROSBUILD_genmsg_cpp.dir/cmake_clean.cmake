FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/gps_box/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/gps_box/GPSBox.h"
  "../msg_gen/cpp/include/gps_box/GPSStatus.h"
  "../msg_gen/cpp/include/gps_box/GPSFix.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
