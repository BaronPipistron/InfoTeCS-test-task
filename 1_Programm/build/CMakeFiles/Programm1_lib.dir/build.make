# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/baronpipistron/InfoTeCS-test-task/1_Programm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/baronpipistron/InfoTeCS-test-task/1_Programm/build

# Include any dependencies generated for this target.
include CMakeFiles/Programm1_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Programm1_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Programm1_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Programm1_lib.dir/flags.make

CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o: CMakeFiles/Programm1_lib.dir/flags.make
CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o: /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/buffer/Buffer.cpp
CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o: CMakeFiles/Programm1_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/baronpipistron/InfoTeCS-test-task/1_Programm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o -MF CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o.d -o CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o -c /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/buffer/Buffer.cpp

CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/buffer/Buffer.cpp > CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.i

CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/buffer/Buffer.cpp -o CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.s

CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o: CMakeFiles/Programm1_lib.dir/flags.make
CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o: /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/thread_handlers/Thread1Handler.cpp
CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o: CMakeFiles/Programm1_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/baronpipistron/InfoTeCS-test-task/1_Programm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o -MF CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o.d -o CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o -c /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/thread_handlers/Thread1Handler.cpp

CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/thread_handlers/Thread1Handler.cpp > CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.i

CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/thread_handlers/Thread1Handler.cpp -o CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.s

CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o: CMakeFiles/Programm1_lib.dir/flags.make
CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o: /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/thread_handlers/Thread2Handler.cpp
CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o: CMakeFiles/Programm1_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/baronpipistron/InfoTeCS-test-task/1_Programm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o -MF CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o.d -o CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o -c /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/thread_handlers/Thread2Handler.cpp

CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/thread_handlers/Thread2Handler.cpp > CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.i

CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/baronpipistron/InfoTeCS-test-task/1_Programm/src/thread_handlers/Thread2Handler.cpp -o CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.s

# Object files for target Programm1_lib
Programm1_lib_OBJECTS = \
"CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o" \
"CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o" \
"CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o"

# External object files for target Programm1_lib
Programm1_lib_EXTERNAL_OBJECTS =

libProgramm1_lib.a: CMakeFiles/Programm1_lib.dir/src/buffer/Buffer.cpp.o
libProgramm1_lib.a: CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread1Handler.cpp.o
libProgramm1_lib.a: CMakeFiles/Programm1_lib.dir/src/thread_handlers/Thread2Handler.cpp.o
libProgramm1_lib.a: CMakeFiles/Programm1_lib.dir/build.make
libProgramm1_lib.a: CMakeFiles/Programm1_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/baronpipistron/InfoTeCS-test-task/1_Programm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libProgramm1_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Programm1_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Programm1_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Programm1_lib.dir/build: libProgramm1_lib.a
.PHONY : CMakeFiles/Programm1_lib.dir/build

CMakeFiles/Programm1_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Programm1_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Programm1_lib.dir/clean

CMakeFiles/Programm1_lib.dir/depend:
	cd /home/baronpipistron/InfoTeCS-test-task/1_Programm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/baronpipistron/InfoTeCS-test-task/1_Programm /home/baronpipistron/InfoTeCS-test-task/1_Programm /home/baronpipistron/InfoTeCS-test-task/1_Programm/build /home/baronpipistron/InfoTeCS-test-task/1_Programm/build /home/baronpipistron/InfoTeCS-test-task/1_Programm/build/CMakeFiles/Programm1_lib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Programm1_lib.dir/depend
