FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/gps_box/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/GPSBox.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_GPSBox.lisp"
  "../msg_gen/lisp/GPSStatus.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_GPSStatus.lisp"
  "../msg_gen/lisp/GPSFix.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_GPSFix.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
