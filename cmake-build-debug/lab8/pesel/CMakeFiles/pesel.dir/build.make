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
include lab8/pesel/CMakeFiles/pesel.dir/depend.make

# Include the progress variables for this target.
include lab8/pesel/CMakeFiles/pesel.dir/progress.make

# Include the compile flags for this target's objects.
include lab8/pesel/CMakeFiles/pesel.dir/flags.make

lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o: lab8/pesel/CMakeFiles/pesel.dir/flags.make
lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o: ../lab8/pesel/Pesel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pesel.dir/Pesel.cpp.o -c /home/students/d/dolawojc/jimp2/suchy/exercices/lab8/pesel/Pesel.cpp

lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pesel.dir/Pesel.cpp.i"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/d/dolawojc/jimp2/suchy/exercices/lab8/pesel/Pesel.cpp > CMakeFiles/pesel.dir/Pesel.cpp.i

lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pesel.dir/Pesel.cpp.s"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/d/dolawojc/jimp2/suchy/exercices/lab8/pesel/Pesel.cpp -o CMakeFiles/pesel.dir/Pesel.cpp.s

lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o.requires:

.PHONY : lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o.requires

lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o.provides: lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o.requires
	$(MAKE) -f lab8/pesel/CMakeFiles/pesel.dir/build.make lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o.provides.build
.PHONY : lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o.provides

lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o.provides.build: lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o


lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o: lab8/pesel/CMakeFiles/pesel.dir/flags.make
lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o: ../lab8/pesel/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pesel.dir/main.cpp.o -c /home/students/d/dolawojc/jimp2/suchy/exercices/lab8/pesel/main.cpp

lab8/pesel/CMakeFiles/pesel.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pesel.dir/main.cpp.i"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/d/dolawojc/jimp2/suchy/exercices/lab8/pesel/main.cpp > CMakeFiles/pesel.dir/main.cpp.i

lab8/pesel/CMakeFiles/pesel.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pesel.dir/main.cpp.s"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/d/dolawojc/jimp2/suchy/exercices/lab8/pesel/main.cpp -o CMakeFiles/pesel.dir/main.cpp.s

lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o.requires:

.PHONY : lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o.requires

lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o.provides: lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o.requires
	$(MAKE) -f lab8/pesel/CMakeFiles/pesel.dir/build.make lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o.provides.build
.PHONY : lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o.provides

lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o.provides.build: lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o


# Object files for target pesel
pesel_OBJECTS = \
"CMakeFiles/pesel.dir/Pesel.cpp.o" \
"CMakeFiles/pesel.dir/main.cpp.o"

# External object files for target pesel
pesel_EXTERNAL_OBJECTS =

lab8/pesel/pesel: lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o
lab8/pesel/pesel: lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o
lab8/pesel/pesel: lab8/pesel/CMakeFiles/pesel.dir/build.make
lab8/pesel/pesel: lab8/pesel/liblibpesel.a
lab8/pesel/pesel: lab8/pesel/CMakeFiles/pesel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable pesel"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pesel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lab8/pesel/CMakeFiles/pesel.dir/build: lab8/pesel/pesel

.PHONY : lab8/pesel/CMakeFiles/pesel.dir/build

lab8/pesel/CMakeFiles/pesel.dir/requires: lab8/pesel/CMakeFiles/pesel.dir/Pesel.cpp.o.requires
lab8/pesel/CMakeFiles/pesel.dir/requires: lab8/pesel/CMakeFiles/pesel.dir/main.cpp.o.requires

.PHONY : lab8/pesel/CMakeFiles/pesel.dir/requires

lab8/pesel/CMakeFiles/pesel.dir/clean:
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel && $(CMAKE_COMMAND) -P CMakeFiles/pesel.dir/cmake_clean.cmake
.PHONY : lab8/pesel/CMakeFiles/pesel.dir/clean

lab8/pesel/CMakeFiles/pesel.dir/depend:
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/students/d/dolawojc/jimp2/suchy/exercices /home/students/d/dolawojc/jimp2/suchy/exercices/lab8/pesel /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab8/pesel/CMakeFiles/pesel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lab8/pesel/CMakeFiles/pesel.dir/depend

