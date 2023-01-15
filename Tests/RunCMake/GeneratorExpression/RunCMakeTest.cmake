include(RunCMake)
set(RunCMake_IGNORE_POLICY_VERSION_DEPRECATION ON)

run_cmake(BadIF)
run_cmake(BadCONFIG)
run_cmake(BadOR)
run_cmake(BadAND)
run_cmake(BadNOT)
run_cmake(BadStrEqual)
run_cmake(BadZero)
run_cmake(BadTargetName)
run_cmake(BadTargetTypeInterface)
run_cmake(BadTargetTypeObject)
run_cmake(BadInstallPrefix)
run_cmake(BadSHELL_PATH)
run_cmake(CMP0044-WARN)
run_cmake(NonValidTarget-C_COMPILER_ID)
run_cmake(NonValidTarget-CXX_COMPILER_ID)
run_cmake(NonValidTarget-Fortran_COMPILER_ID)
run_cmake(NonValidTarget-C_COMPILER_VERSION)
run_cmake(NonValidTarget-CXX_COMPILER_VERSION)
run_cmake(NonValidTarget-Fortran_COMPILER_VERSION)
run_cmake(NonValidTarget-TARGET_PROPERTY)
run_cmake(NonValidTarget-TARGET_POLICY)
run_cmake(COMPILE_ONLY-not-compiling)
run_cmake(LINK_ONLY-not-linking)
run_cmake(TARGET_EXISTS-no-arg)
run_cmake(TARGET_EXISTS-empty-arg)
run_cmake(TARGET_EXISTS)
run_cmake(TARGET_EXISTS-not-a-target)
run_cmake(TARGET_NAME_IF_EXISTS-no-arg)
run_cmake(TARGET_NAME_IF_EXISTS-empty-arg)
run_cmake(TARGET_NAME_IF_EXISTS)
run_cmake(TARGET_NAME_IF_EXISTS-not-a-target)
run_cmake(TARGET_NAME_IF_EXISTS-alias-target)
run_cmake(TARGET_NAME_IF_EXISTS-imported-target)
run_cmake(TARGET_NAME_IF_EXISTS-imported-global-target)
run_cmake(REMOVE_DUPLICATES-empty)
run_cmake(REMOVE_DUPLICATES-1)
run_cmake(REMOVE_DUPLICATES-2)
run_cmake(REMOVE_DUPLICATES-3)
run_cmake(REMOVE_DUPLICATES-4)
run_cmake(FILTER-empty)
run_cmake(FILTER-InvalidOperator)
run_cmake(FILTER-Exclude)
run_cmake(FILTER-Include)

if(RunCMake_GENERATOR_IS_MULTI_CONFIG)
  set(RunCMake_TEST_OPTIONS [==[-DCMAKE_CONFIGURATION_TYPES=CustomConfig]==])
else()
  set(RunCMake_TEST_OPTIONS [==[-DCMAKE_BUILD_TYPE=CustomConfig]==])
endif()
run_cmake(CONFIG-multiple-entries)
if(RunCMake_GENERATOR_IS_MULTI_CONFIG)
  set(RunCMake_TEST_OPTIONS [==[-DCMAKE_CONFIGURATION_TYPES=]==])
else()
  set(RunCMake_TEST_OPTIONS [==[-DCMAKE_BUILD_TYPE=]==])
endif()
run_cmake(CONFIG-empty-entries)

set(RunCMake_TEST_OPTIONS -DCMAKE_POLICY_DEFAULT_CMP0085:STRING=OLD)
run_cmake(CMP0085-OLD)
unset(RunCMake_TEST_OPTIONS)

run_cmake(CMP0085-WARN)

set(RunCMake_TEST_OPTIONS -DCMAKE_POLICY_DEFAULT_CMP0085:STRING=NEW)
run_cmake(CMP0085-NEW)
unset(RunCMake_TEST_OPTIONS)
