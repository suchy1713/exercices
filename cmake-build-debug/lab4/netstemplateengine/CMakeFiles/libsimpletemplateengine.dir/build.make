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
include lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/depend.make

# Include the progress variables for this target.
include lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/progress.make

# Include the compile flags for this target's objects.
include lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/flags.make

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o: lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/flags.make
lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o: ../lab4/netstemplateengine/SimpleTemplateEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab4/netstemplateengine && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o -c /home/students/d/dolawojc/jimp2/suchy/exercices/lab4/netstemplateengine/SimpleTemplateEngine.cpp

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.i"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab4/netstemplateengine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/d/dolawojc/jimp2/suchy/exercices/lab4/netstemplateengine/SimpleTemplateEngine.cpp > CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.i

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.s"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab4/netstemplateengine && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/d/dolawojc/jimp2/suchy/exercices/lab4/netstemplateengine/SimpleTemplateEngine.cpp -o CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.s

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o.requires:

.PHONY : lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o.requires

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o.provides: lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o.requires
	$(MAKE) -f lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/build.make lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o.provides.build
.PHONY : lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o.provides

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o.provides.build: lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o


# Object files for target libsimpletemplateengine
libsimpletemplateengine_OBJECTS = \
"CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o"

# External object files for target libsimpletemplateengine
libsimpletemplateengine_EXTERNAL_OBJECTS =

lab4/netstemplateengine/liblibsimpletemplateengine.a: lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o
lab4/netstemplateengine/liblibsimpletemplateengine.a: lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/build.make
lab4/netstemplateengine/liblibsimpletemplateengine.a: lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblibsimpletemplateengine.a"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab4/netstemplateengine && $(CMAKE_COMMAND) -P CMakeFiles/libsimpletemplateengine.dir/cmake_clean_target.cmake
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab4/netstemplateengine && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libsimpletemplateengine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/build: lab4/netstemplateengine/liblibsimpletemplateengine.a

.PHONY : lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/build

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/requires: lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/SimpleTemplateEngine.cpp.o.requires

.PHONY : lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/requires

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/clean:
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab4/netstemplateengine && $(CMAKE_COMMAND) -P CMakeFiles/libsimpletemplateengine.dir/cmake_clean.cmake
.PHONY : lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/clean

lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/depend:
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/students/d/dolawojc/jimp2/suchy/exercices /home/students/d/dolawojc/jimp2/suchy/exercices/lab4/netstemplateengine /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab4/netstemplateengine /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lab4/netstemplateengine/CMakeFiles/libsimpletemplateengine.dir/depend

