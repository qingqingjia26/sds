cmake_minimum_required(VERSION 3.10)
project(sds_test)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
# 设置 C++ 标准为 C99
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

# 添加可执行文件
add_executable(sds-test sds.c)

# 添加编译选项
target_compile_options(sds-test PRIVATE -Wall -pedantic -O2)

# 添加定义
target_compile_definitions(sds-test PRIVATE SDS_TEST_MAIN)

# 添加清理目标
add_custom_target(custom_clean
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_BINARY_DIR}/cmake_clean.cmake
)
