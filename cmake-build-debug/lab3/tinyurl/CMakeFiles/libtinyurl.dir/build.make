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
include lab3/tinyurl/CMakeFiles/libtinyurl.dir/depend.make

# Include the progress variables for this target.
include lab3/tinyurl/CMakeFiles/libtinyurl.dir/progress.make

# Include the compile flags for this target's objects.
include lab3/tinyurl/CMakeFiles/libtinyurl.dir/flags.make

lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o: lab3/tinyurl/CMakeFiles/libtinyurl.dir/flags.make
lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o: ../lab3/tinyurl/TinyUrl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab3/tinyurl && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o -c /home/suchy1713/JIMPREPO/exercices/lab3/tinyurl/TinyUrl.cpp

lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libtinyurl.dir/TinyUrl.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab3/tinyurl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/lab3/tinyurl/TinyUrl.cpp > CMakeFiles/libtinyurl.dir/TinyUrl.cpp.i

lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libtinyurl.dir/TinyUrl.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab3/tinyurl && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/lab3/tinyurl/TinyUrl.cpp -o CMakeFiles/libtinyurl.dir/TinyUrl.cpp.s

lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o.requires:

.PHONY : lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o.requires

lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o.provides: lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o.requires
	$(MAKE) -f lab3/tinyurl/CMakeFiles/libtinyurl.dir/build.make lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o.provides.build
.PHONY : lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o.provides

lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o.provides.build: lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o


# Object files for target libtinyurl
libtinyurl_OBJECTS = \
"CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o"

# External object files for target libtinyurl
libtinyurl_EXTERNAL_OBJECTS =

lab3/tinyurl/liblibtinyurl.a: lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o
lab3/tinyurl/liblibtinyurl.a: lab3/tinyurl/CMakeFiles/libtinyurl.dir/build.make
lab3/tinyurl/liblibtinyurl.a: lab3/tinyurl/CMakeFiles/libtinyurl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibtinyurl.a"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab3/tinyurl && $(CMAKE_COMMAND) -P CMakeFiles/libtinyurl.dir/cmake_clean_target.cmake
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab3/tinyurl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libtinyurl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lab3/tinyurl/CMakeFiles/libtinyurl.dir/build: lab3/tinyurl/liblibtinyurl.a

.PHONY : lab3/tinyurl/CMakeFiles/libtinyurl.dir/build

lab3/tinyurl/CMakeFiles/libtinyurl.dir/requires: lab3/tinyurl/CMakeFiles/libtinyurl.dir/TinyUrl.cpp.o.requires

.PHONY : lab3/tinyurl/CMakeFiles/libtinyurl.dir/requires

lab3/tinyurl/CMakeFiles/libtinyurl.dir/clean:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab3/tinyurl && $(CMAKE_COMMAND) -P CMakeFiles/libtinyurl.dir/cmake_clean.cmake
.PHONY : lab3/tinyurl/CMakeFiles/libtinyurl.dir/clean

lab3/tinyurl/CMakeFiles/libtinyurl.dir/depend:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suchy1713/JIMPREPO/exercices /home/suchy1713/JIMPREPO/exercices/lab3/tinyurl /home/suchy1713/JIMPREPO/exercices/cmake-build-debug /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab3/tinyurl /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/lab3/tinyurl/CMakeFiles/libtinyurl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lab3/tinyurl/CMakeFiles/libtinyurl.dir/depend

