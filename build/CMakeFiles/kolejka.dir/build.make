# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/niko/programowanie/Kolejka

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/niko/programowanie/Kolejka/build

# Include any dependencies generated for this target.
include CMakeFiles/kolejka.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/kolejka.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/kolejka.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kolejka.dir/flags.make

CMakeFiles/kolejka.dir/src/main.cpp.o: CMakeFiles/kolejka.dir/flags.make
CMakeFiles/kolejka.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/kolejka.dir/src/main.cpp.o: CMakeFiles/kolejka.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niko/programowanie/Kolejka/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kolejka.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/kolejka.dir/src/main.cpp.o -MF CMakeFiles/kolejka.dir/src/main.cpp.o.d -o CMakeFiles/kolejka.dir/src/main.cpp.o -c /home/niko/programowanie/Kolejka/src/main.cpp

CMakeFiles/kolejka.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kolejka.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niko/programowanie/Kolejka/src/main.cpp > CMakeFiles/kolejka.dir/src/main.cpp.i

CMakeFiles/kolejka.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kolejka.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niko/programowanie/Kolejka/src/main.cpp -o CMakeFiles/kolejka.dir/src/main.cpp.s

# Object files for target kolejka
kolejka_OBJECTS = \
"CMakeFiles/kolejka.dir/src/main.cpp.o"

# External object files for target kolejka
kolejka_EXTERNAL_OBJECTS =

kolejka: CMakeFiles/kolejka.dir/src/main.cpp.o
kolejka: CMakeFiles/kolejka.dir/build.make
kolejka: CMakeFiles/kolejka.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/niko/programowanie/Kolejka/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable kolejka"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kolejka.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kolejka.dir/build: kolejka
.PHONY : CMakeFiles/kolejka.dir/build

CMakeFiles/kolejka.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kolejka.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kolejka.dir/clean

CMakeFiles/kolejka.dir/depend:
	cd /home/niko/programowanie/Kolejka/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/niko/programowanie/Kolejka /home/niko/programowanie/Kolejka /home/niko/programowanie/Kolejka/build /home/niko/programowanie/Kolejka/build /home/niko/programowanie/Kolejka/build/CMakeFiles/kolejka.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kolejka.dir/depend

