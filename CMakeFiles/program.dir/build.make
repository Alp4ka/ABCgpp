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
CMAKE_COMMAND = /snap/clion/169/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/169/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/roman/Desktop/ABCgpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/roman/Desktop/ABCgpp

# Include any dependencies generated for this target.
include CMakeFiles/program.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/program.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/program.dir/flags.make

CMakeFiles/program.dir/main.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/program.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/program.dir/main.cpp.o -c /home/roman/Desktop/ABCgpp/main.cpp

CMakeFiles/program.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/Desktop/ABCgpp/main.cpp > CMakeFiles/program.dir/main.cpp.i

CMakeFiles/program.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/Desktop/ABCgpp/main.cpp -o CMakeFiles/program.dir/main.cpp.s

CMakeFiles/program.dir/utils/utils.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/utils/utils.cpp.o: utils/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/program.dir/utils/utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/program.dir/utils/utils.cpp.o -c /home/roman/Desktop/ABCgpp/utils/utils.cpp

CMakeFiles/program.dir/utils/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/utils/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/Desktop/ABCgpp/utils/utils.cpp > CMakeFiles/program.dir/utils/utils.cpp.i

CMakeFiles/program.dir/utils/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/utils/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/Desktop/ABCgpp/utils/utils.cpp -o CMakeFiles/program.dir/utils/utils.cpp.s

CMakeFiles/program.dir/container/container.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/container/container.cpp.o: container/container.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/program.dir/container/container.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/program.dir/container/container.cpp.o -c /home/roman/Desktop/ABCgpp/container/container.cpp

CMakeFiles/program.dir/container/container.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/container/container.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/Desktop/ABCgpp/container/container.cpp > CMakeFiles/program.dir/container/container.cpp.i

CMakeFiles/program.dir/container/container.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/container/container.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/Desktop/ABCgpp/container/container.cpp -o CMakeFiles/program.dir/container/container.cpp.s

CMakeFiles/program.dir/models/Plant.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/models/Plant.cpp.o: models/Plant.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/program.dir/models/Plant.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/program.dir/models/Plant.cpp.o -c /home/roman/Desktop/ABCgpp/models/Plant.cpp

CMakeFiles/program.dir/models/Plant.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/models/Plant.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/Desktop/ABCgpp/models/Plant.cpp > CMakeFiles/program.dir/models/Plant.cpp.i

CMakeFiles/program.dir/models/Plant.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/models/Plant.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/Desktop/ABCgpp/models/Plant.cpp -o CMakeFiles/program.dir/models/Plant.cpp.s

CMakeFiles/program.dir/algorithms/algorithms.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/algorithms/algorithms.cpp.o: algorithms/algorithms.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/program.dir/algorithms/algorithms.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/program.dir/algorithms/algorithms.cpp.o -c /home/roman/Desktop/ABCgpp/algorithms/algorithms.cpp

CMakeFiles/program.dir/algorithms/algorithms.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/algorithms/algorithms.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/Desktop/ABCgpp/algorithms/algorithms.cpp > CMakeFiles/program.dir/algorithms/algorithms.cpp.i

CMakeFiles/program.dir/algorithms/algorithms.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/algorithms/algorithms.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/Desktop/ABCgpp/algorithms/algorithms.cpp -o CMakeFiles/program.dir/algorithms/algorithms.cpp.s

CMakeFiles/program.dir/models/Flower.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/models/Flower.cpp.o: models/Flower.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/program.dir/models/Flower.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/program.dir/models/Flower.cpp.o -c /home/roman/Desktop/ABCgpp/models/Flower.cpp

CMakeFiles/program.dir/models/Flower.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/models/Flower.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/Desktop/ABCgpp/models/Flower.cpp > CMakeFiles/program.dir/models/Flower.cpp.i

CMakeFiles/program.dir/models/Flower.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/models/Flower.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/Desktop/ABCgpp/models/Flower.cpp -o CMakeFiles/program.dir/models/Flower.cpp.s

CMakeFiles/program.dir/models/Shrub.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/models/Shrub.cpp.o: models/Shrub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/program.dir/models/Shrub.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/program.dir/models/Shrub.cpp.o -c /home/roman/Desktop/ABCgpp/models/Shrub.cpp

CMakeFiles/program.dir/models/Shrub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/models/Shrub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/Desktop/ABCgpp/models/Shrub.cpp > CMakeFiles/program.dir/models/Shrub.cpp.i

CMakeFiles/program.dir/models/Shrub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/models/Shrub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/Desktop/ABCgpp/models/Shrub.cpp -o CMakeFiles/program.dir/models/Shrub.cpp.s

CMakeFiles/program.dir/models/Tree.cpp.o: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/models/Tree.cpp.o: models/Tree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/program.dir/models/Tree.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/program.dir/models/Tree.cpp.o -c /home/roman/Desktop/ABCgpp/models/Tree.cpp

CMakeFiles/program.dir/models/Tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/program.dir/models/Tree.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/roman/Desktop/ABCgpp/models/Tree.cpp > CMakeFiles/program.dir/models/Tree.cpp.i

CMakeFiles/program.dir/models/Tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/program.dir/models/Tree.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/roman/Desktop/ABCgpp/models/Tree.cpp -o CMakeFiles/program.dir/models/Tree.cpp.s

# Object files for target program
program_OBJECTS = \
"CMakeFiles/program.dir/main.cpp.o" \
"CMakeFiles/program.dir/utils/utils.cpp.o" \
"CMakeFiles/program.dir/container/container.cpp.o" \
"CMakeFiles/program.dir/models/Plant.cpp.o" \
"CMakeFiles/program.dir/algorithms/algorithms.cpp.o" \
"CMakeFiles/program.dir/models/Flower.cpp.o" \
"CMakeFiles/program.dir/models/Shrub.cpp.o" \
"CMakeFiles/program.dir/models/Tree.cpp.o"

# External object files for target program
program_EXTERNAL_OBJECTS =

bin/program: CMakeFiles/program.dir/main.cpp.o
bin/program: CMakeFiles/program.dir/utils/utils.cpp.o
bin/program: CMakeFiles/program.dir/container/container.cpp.o
bin/program: CMakeFiles/program.dir/models/Plant.cpp.o
bin/program: CMakeFiles/program.dir/algorithms/algorithms.cpp.o
bin/program: CMakeFiles/program.dir/models/Flower.cpp.o
bin/program: CMakeFiles/program.dir/models/Shrub.cpp.o
bin/program: CMakeFiles/program.dir/models/Tree.cpp.o
bin/program: CMakeFiles/program.dir/build.make
bin/program: CMakeFiles/program.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/roman/Desktop/ABCgpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable bin/program"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/program.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/program.dir/build: bin/program
.PHONY : CMakeFiles/program.dir/build

CMakeFiles/program.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/program.dir/cmake_clean.cmake
.PHONY : CMakeFiles/program.dir/clean

CMakeFiles/program.dir/depend:
	cd /home/roman/Desktop/ABCgpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/roman/Desktop/ABCgpp /home/roman/Desktop/ABCgpp /home/roman/Desktop/ABCgpp /home/roman/Desktop/ABCgpp /home/roman/Desktop/ABCgpp/CMakeFiles/program.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/program.dir/depend

