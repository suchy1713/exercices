# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/suchy1713/JIMPREPO/exercices

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/suchy1713/JIMPREPO/exercices/cmake-build-debug

# Include any dependencies generated for this target.
include lab1/factorial/CMakeFiles/libfactorial.dir/depend.make

# Include the progress variables for this target.
include lab1/factorial/CMakeFiles/libfactorial.dir/progress.make

# Include the compile flags for this target's objects.
include lab1/factorial/CMakeFiles/libfactorial.dir/flags.make

lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o: lab1/factorial/CMakeFiles/libfactorial.dir/flags.make
lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o: ../lab1/factorial/Factorial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab1/factorial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libfactorial.dir/Factorial.cpp.o -c /home/suchy1713/JIMPREPO/exercices/lab1/factorial/Factorial.cpp

lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libfactorial.dir/Factorial.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab1/factorial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/lab1/factorial/Factorial.cpp > CMakeFiles/libfactorial.dir/Factorial.cpp.i

lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libfactorial.dir/Factorial.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab1/factorial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/lab1/factorial/Factorial.cpp -o CMakeFiles/libfactorial.dir/Factorial.cpp.s

lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o.requires:

.PHONY : lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o.requires

lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o.provides: lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o.requires
	$(MAKE) -f lab1/factorial/CMakeFiles/libfactorial.dir/build.make lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o.provides.build
.PHONY : lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o.provides

lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o.provides.build: lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o


# Object files for target libfactorial
libfactorial_OBJECTS = \
"CMakeFiles/libfactorial.dir/Factorial.cpp.o"

# External object files for target libfactorial
libfactorial_EXTERNAL_OBJECTS =

lab1/factorial/liblibfactorial.a: lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o
lab1/factorial/liblibfactorial.a: lab1/factorial/CMakeFiles/libfactorial.dir/build.make
lab1/factorial/liblibfactorial.a: lab1/factorial/CMakeFiles/libfactorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibfactorial.a"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab1/factorial && $(CMAKE_COMMAND) -P CMakeFiles/libfactorial.dir/cmake_clean_target.cmake
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab1/factorial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libfactorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lab1/factorial/CMakeFiles/libfactorial.dir/build: lab1/factorial/liblibfactorial.a

.PHONY : lab1/factorial/CMakeFiles/libfactorial.dir/build

lab1/factorial/CMakeFiles/libfactorial.dir/requires: lab1/factorial/CMakeFiles/libfactorial.dir/Factorial.cpp.o.requires

.PHONY : lab1/factorial/CMakeFiles/libfactorial.dir/requires

lab1/factorial/CMakeFiles/libfactorial.dir/clean:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab1/factorial && $(CMAKE_COMMAND) -P CMakeFiles/libfactorial.dir/cmake_clean.cmake
.PHONY : lab1/factorial/CMakeFiles/libfactorial.dir/clean

lab1/factorial/CMakeFiles/libfactorial.dir/depend:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suchy1713/JIMPREPO/exercices /home/suchy1713/JIMPREPO/exercices/lab1/factorial /home/suchy1713/JIMPREPO/exercices/cmake-build-debug /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab1/factorial /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab1/factorial/CMakeFiles/libfactorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lab1/factorial/CMakeFiles/libfactorial.dir/depend

