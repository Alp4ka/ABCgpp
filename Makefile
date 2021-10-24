# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/snap/clion/169/bin/cmake/linux/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/snap/clion/169/bin/cmake/linux/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/roman/Desktop/ABCgpp/CMakeFiles /home/roman/Desktop/ABCgpp//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/roman/Desktop/ABCgpp/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named program

# Build rule for target.
program: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 program
.PHONY : program

# fast build rule for target.
program/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/build
.PHONY : program/fast

algorithms/algorithms.o: algorithms/algorithms.cpp.o
.PHONY : algorithms/algorithms.o

# target to build an object file
algorithms/algorithms.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/algorithms/algorithms.cpp.o
.PHONY : algorithms/algorithms.cpp.o

algorithms/algorithms.i: algorithms/algorithms.cpp.i
.PHONY : algorithms/algorithms.i

# target to preprocess a source file
algorithms/algorithms.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/algorithms/algorithms.cpp.i
.PHONY : algorithms/algorithms.cpp.i

algorithms/algorithms.s: algorithms/algorithms.cpp.s
.PHONY : algorithms/algorithms.s

# target to generate assembly for a file
algorithms/algorithms.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/algorithms/algorithms.cpp.s
.PHONY : algorithms/algorithms.cpp.s

container/container.o: container/container.cpp.o
.PHONY : container/container.o

# target to build an object file
container/container.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/container/container.cpp.o
.PHONY : container/container.cpp.o

container/container.i: container/container.cpp.i
.PHONY : container/container.i

# target to preprocess a source file
container/container.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/container/container.cpp.i
.PHONY : container/container.cpp.i

container/container.s: container/container.cpp.s
.PHONY : container/container.s

# target to generate assembly for a file
container/container.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/container/container.cpp.s
.PHONY : container/container.cpp.s

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/main.cpp.s
.PHONY : main.cpp.s

models/Flower.o: models/Flower.cpp.o
.PHONY : models/Flower.o

# target to build an object file
models/Flower.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Flower.cpp.o
.PHONY : models/Flower.cpp.o

models/Flower.i: models/Flower.cpp.i
.PHONY : models/Flower.i

# target to preprocess a source file
models/Flower.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Flower.cpp.i
.PHONY : models/Flower.cpp.i

models/Flower.s: models/Flower.cpp.s
.PHONY : models/Flower.s

# target to generate assembly for a file
models/Flower.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Flower.cpp.s
.PHONY : models/Flower.cpp.s

models/Plant.o: models/Plant.cpp.o
.PHONY : models/Plant.o

# target to build an object file
models/Plant.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Plant.cpp.o
.PHONY : models/Plant.cpp.o

models/Plant.i: models/Plant.cpp.i
.PHONY : models/Plant.i

# target to preprocess a source file
models/Plant.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Plant.cpp.i
.PHONY : models/Plant.cpp.i

models/Plant.s: models/Plant.cpp.s
.PHONY : models/Plant.s

# target to generate assembly for a file
models/Plant.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Plant.cpp.s
.PHONY : models/Plant.cpp.s

models/Shrub.o: models/Shrub.cpp.o
.PHONY : models/Shrub.o

# target to build an object file
models/Shrub.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Shrub.cpp.o
.PHONY : models/Shrub.cpp.o

models/Shrub.i: models/Shrub.cpp.i
.PHONY : models/Shrub.i

# target to preprocess a source file
models/Shrub.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Shrub.cpp.i
.PHONY : models/Shrub.cpp.i

models/Shrub.s: models/Shrub.cpp.s
.PHONY : models/Shrub.s

# target to generate assembly for a file
models/Shrub.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Shrub.cpp.s
.PHONY : models/Shrub.cpp.s

models/Tree.o: models/Tree.cpp.o
.PHONY : models/Tree.o

# target to build an object file
models/Tree.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Tree.cpp.o
.PHONY : models/Tree.cpp.o

models/Tree.i: models/Tree.cpp.i
.PHONY : models/Tree.i

# target to preprocess a source file
models/Tree.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Tree.cpp.i
.PHONY : models/Tree.cpp.i

models/Tree.s: models/Tree.cpp.s
.PHONY : models/Tree.s

# target to generate assembly for a file
models/Tree.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/models/Tree.cpp.s
.PHONY : models/Tree.cpp.s

utils/utils.o: utils/utils.cpp.o
.PHONY : utils/utils.o

# target to build an object file
utils/utils.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/utils/utils.cpp.o
.PHONY : utils/utils.cpp.o

utils/utils.i: utils/utils.cpp.i
.PHONY : utils/utils.i

# target to preprocess a source file
utils/utils.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/utils/utils.cpp.i
.PHONY : utils/utils.cpp.i

utils/utils.s: utils/utils.cpp.s
.PHONY : utils/utils.s

# target to generate assembly for a file
utils/utils.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/program.dir/build.make CMakeFiles/program.dir/utils/utils.cpp.s
.PHONY : utils/utils.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... program"
	@echo "... algorithms/algorithms.o"
	@echo "... algorithms/algorithms.i"
	@echo "... algorithms/algorithms.s"
	@echo "... container/container.o"
	@echo "... container/container.i"
	@echo "... container/container.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... models/Flower.o"
	@echo "... models/Flower.i"
	@echo "... models/Flower.s"
	@echo "... models/Plant.o"
	@echo "... models/Plant.i"
	@echo "... models/Plant.s"
	@echo "... models/Shrub.o"
	@echo "... models/Shrub.i"
	@echo "... models/Shrub.s"
	@echo "... models/Tree.o"
	@echo "... models/Tree.i"
	@echo "... models/Tree.s"
	@echo "... utils/utils.o"
	@echo "... utils/utils.i"
	@echo "... utils/utils.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

