file(REMOVE_RECURSE
  "mcl_localization_node_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/mcl_localization_gennodejs.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
