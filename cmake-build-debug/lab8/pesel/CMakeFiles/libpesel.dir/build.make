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
include lab8/pesel/CMakeFiles/libpesel.dir/depend.make

# Include the progress variables for this target.
include lab8/pesel/CMakeFiles/libpesel.dir/progress.make

# Include the compile flags for this target's objects.
include lab8/pesel/CMakeFiles/libpesel.dir/flags.make

lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o: lab8/pesel/CMakeFiles/libpesel.dir/flags.make
lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o: ../lab8/pesel/Pesel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libpesel.dir/Pesel.cpp.o -c /home/suchy1713/JIMPREPO/exercices/lab8/pesel/Pesel.cpp

lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libpesel.dir/Pesel.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/lab8/pesel/Pesel.cpp > CMakeFiles/libpesel.dir/Pesel.cpp.i

lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libpesel.dir/Pesel.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/lab8/pesel/Pesel.cpp -o CMakeFiles/libpesel.dir/Pesel.cpp.s

lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o.requires:

.PHONY : lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o.requires

lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o.provides: lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o.requires
	$(MAKE) -f lab8/pesel/CMakeFiles/libpesel.dir/build.make lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o.provides.build
.PHONY : lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o.provides

lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o.provides.build: lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o


# Object files for target libpesel
libpesel_OBJECTS = \
"CMakeFiles/libpesel.dir/Pesel.cpp.o"

# External object files for target libpesel
libpesel_EXTERNAL_OBJECTS =

lab8/pesel/liblibpesel.a: lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o
lab8/pesel/liblibpesel.a: lab8/pesel/CMakeFiles/libpesel.dir/build.make
lab8/pesel/liblibpesel.a: lab8/pesel/CMakeFiles/libpesel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibpesel.a"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab8/pesel && $(CMAKE_COMMAND) -P CMakeFiles/libpesel.dir/cmake_clean_target.cmake
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab8/pesel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libpesel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lab8/pesel/CMakeFiles/libpesel.dir/build: lab8/pesel/liblibpesel.a

.PHONY : lab8/pesel/CMakeFiles/libpesel.dir/build

lab8/pesel/CMakeFiles/libpesel.dir/requires: lab8/pesel/CMakeFiles/libpesel.dir/Pesel.cpp.o.requires

.PHONY : lab8/pesel/CMakeFiles/libpesel.dir/requires

lab8/pesel/CMakeFiles/libpesel.dir/clean:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab8/pesel && $(CMAKE_COMMAND) -P CMakeFiles/libpesel.dir/cmake_clean.cmake
.PHONY : lab8/pesel/CMakeFiles/libpesel.dir/clean

lab8/pesel/CMakeFiles/libpesel.dir/depend:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suchy1713/JIMPREPO/exercices /home/suchy1713/JIMPREPO/exercices/lab8/pesel /home/suchy1713/JIMPREPO/exercices/cmake-build-debug /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab8/pesel /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab8/pesel/CMakeFiles/libpesel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lab8/pesel/CMakeFiles/libpesel.dir/depend

