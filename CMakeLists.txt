cmake_minimum_required(VERSION 3.16)
project(SyscallHooking C)

set(CMAKE_C_STANDARD 99)

add_executable(SyscallHooking main.c hook.c)