project(program)

set(CMAKE_CXX_STANDARD 14)

set(BUILD_DIR "${CMAKE_BINARY_DIR}")

set(HEADER_FILES
        utils/utils.h
        models/shrub.h
	models/flower.h
	models/tree.h
        models/plant.h container/container.h algorithms/algorithms.h)

set(SOURCE_FILES
        utils/utils.cpp
		container/container.cpp models/plant.cpp algorithms/algorithms.cpp)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/bin")
set(BINARY_DIR "${CMAKE_BINARY_DIR}")


add_executable(program
        main.cpp
        ${HEADER_FILES}
        ${SOURCE_FILES}
        )
