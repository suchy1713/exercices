# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/local/clion-2018.1.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/clion-2018.1.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/students/d/dolawojc/jimp2/suchy/exercices

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug

# Include any dependencies generated for this target.
include lab5/matrix/CMakeFiles/matrix.dir/depend.make

# Include the progress variables for this target.
include lab5/matrix/CMakeFiles/matrix.dir/progress.make

# Include the compile flags for this target's objects.
include lab5/matrix/CMakeFiles/matrix.dir/flags.make

lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o: lab5/matrix/CMakeFiles/matrix.dir/flags.make
lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o: ../lab5/matrix/Matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrix.dir/Matrix.cpp.o -c /home/students/d/dolawojc/jimp2/suchy/exercices/lab5/matrix/Matrix.cpp

lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix.dir/Matrix.cpp.i"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/d/dolawojc/jimp2/suchy/exercices/lab5/matrix/Matrix.cpp > CMakeFiles/matrix.dir/Matrix.cpp.i

lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix.dir/Matrix.cpp.s"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/d/dolawojc/jimp2/suchy/exercices/lab5/matrix/Matrix.cpp -o CMakeFiles/matrix.dir/Matrix.cpp.s

lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o.requires:

.PHONY : lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o.requires

lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o.provides: lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o.requires
	$(MAKE) -f lab5/matrix/CMakeFiles/matrix.dir/build.make lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o.provides.build
.PHONY : lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o.provides

lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o.provides.build: lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o


lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o: lab5/matrix/CMakeFiles/matrix.dir/flags.make
lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o: ../lab5/matrix/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrix.dir/main.cpp.o -c /home/students/d/dolawojc/jimp2/suchy/exercices/lab5/matrix/main.cpp

lab5/matrix/CMakeFiles/matrix.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix.dir/main.cpp.i"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/d/dolawojc/jimp2/suchy/exercices/lab5/matrix/main.cpp > CMakeFiles/matrix.dir/main.cpp.i

lab5/matrix/CMakeFiles/matrix.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix.dir/main.cpp.s"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/d/dolawojc/jimp2/suchy/exercices/lab5/matrix/main.cpp -o CMakeFiles/matrix.dir/main.cpp.s

lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o.requires:

.PHONY : lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o.requires

lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o.provides: lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o.requires
	$(MAKE) -f lab5/matrix/CMakeFiles/matrix.dir/build.make lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o.provides.build
.PHONY : lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o.provides

lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o.provides.build: lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o


# Object files for target matrix
matrix_OBJECTS = \
"CMakeFiles/matrix.dir/Matrix.cpp.o" \
"CMakeFiles/matrix.dir/main.cpp.o"

# External object files for target matrix
matrix_EXTERNAL_OBJECTS =

lab5/matrix/matrix: lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o
lab5/matrix/matrix: lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o
lab5/matrix/matrix: lab5/matrix/CMakeFiles/matrix.dir/build.make
lab5/matrix/matrix: lab5/matrix/liblibmatrix.a
lab5/matrix/matrix: lab5/matrix/CMakeFiles/matrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable matrix"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lab5/matrix/CMakeFiles/matrix.dir/build: lab5/matrix/matrix

.PHONY : lab5/matrix/CMakeFiles/matrix.dir/build

lab5/matrix/CMakeFiles/matrix.dir/requires: lab5/matrix/CMakeFiles/matrix.dir/Matrix.cpp.o.requires
lab5/matrix/CMakeFiles/matrix.dir/requires: lab5/matrix/CMakeFiles/matrix.dir/main.cpp.o.requires

.PHONY : lab5/matrix/CMakeFiles/matrix.dir/requires

lab5/matrix/CMakeFiles/matrix.dir/clean:
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix && $(CMAKE_COMMAND) -P CMakeFiles/matrix.dir/cmake_clean.cmake
.PHONY : lab5/matrix/CMakeFiles/matrix.dir/clean

lab5/matrix/CMakeFiles/matrix.dir/depend:
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/students/d/dolawojc/jimp2/suchy/exercices /home/students/d/dolawojc/jimp2/suchy/exercices/lab5/matrix /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab5/matrix/CMakeFiles/matrix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lab5/matrix/CMakeFiles/matrix.dir/depend

