# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/sykim/github/c-study/c-json-parse/json-c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sykim/github/c-study/c-json-parse/json-c-build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_object_iterator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test_object_iterator.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_object_iterator.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_object_iterator.dir/flags.make

tests/CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o: tests/CMakeFiles/test_object_iterator.dir/flags.make
tests/CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o: /home/sykim/github/c-study/c-json-parse/json-c/tests/test_object_iterator.c
tests/CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o: tests/CMakeFiles/test_object_iterator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sykim/github/c-study/c-json-parse/json-c-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o"
	cd /home/sykim/github/c-study/c-json-parse/json-c-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o -MF CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o.d -o CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o -c /home/sykim/github/c-study/c-json-parse/json-c/tests/test_object_iterator.c

tests/CMakeFiles/test_object_iterator.dir/test_object_iterator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_object_iterator.dir/test_object_iterator.c.i"
	cd /home/sykim/github/c-study/c-json-parse/json-c-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sykim/github/c-study/c-json-parse/json-c/tests/test_object_iterator.c > CMakeFiles/test_object_iterator.dir/test_object_iterator.c.i

tests/CMakeFiles/test_object_iterator.dir/test_object_iterator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_object_iterator.dir/test_object_iterator.c.s"
	cd /home/sykim/github/c-study/c-json-parse/json-c-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sykim/github/c-study/c-json-parse/json-c/tests/test_object_iterator.c -o CMakeFiles/test_object_iterator.dir/test_object_iterator.c.s

# Object files for target test_object_iterator
test_object_iterator_OBJECTS = \
"CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o"

# External object files for target test_object_iterator
test_object_iterator_EXTERNAL_OBJECTS =

tests/test_object_iterator: tests/CMakeFiles/test_object_iterator.dir/test_object_iterator.c.o
tests/test_object_iterator: tests/CMakeFiles/test_object_iterator.dir/build.make
tests/test_object_iterator: libjson-c.so.5.2.0
tests/test_object_iterator: tests/CMakeFiles/test_object_iterator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sykim/github/c-study/c-json-parse/json-c-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test_object_iterator"
	cd /home/sykim/github/c-study/c-json-parse/json-c-build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_object_iterator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_object_iterator.dir/build: tests/test_object_iterator
.PHONY : tests/CMakeFiles/test_object_iterator.dir/build

tests/CMakeFiles/test_object_iterator.dir/clean:
	cd /home/sykim/github/c-study/c-json-parse/json-c-build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_object_iterator.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_object_iterator.dir/clean

tests/CMakeFiles/test_object_iterator.dir/depend:
	cd /home/sykim/github/c-study/c-json-parse/json-c-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sykim/github/c-study/c-json-parse/json-c /home/sykim/github/c-study/c-json-parse/json-c/tests /home/sykim/github/c-study/c-json-parse/json-c-build /home/sykim/github/c-study/c-json-parse/json-c-build/tests /home/sykim/github/c-study/c-json-parse/json-c-build/tests/CMakeFiles/test_object_iterator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_object_iterator.dir/depend

