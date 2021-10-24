project(program)

set(CMAKE_CXX_STANDARD 14)

set(BUILD_DIR "${CMAKE_BINARY_DIR}")

set(HEADER_FILES
        utils/utils.h
		models/Shrub.h
		models/Flower.h
		models/Tree.h
		models/Plant.h container/container.h algorithms/algorithms.h)

set(SOURCE_FILES
        utils/utils.cpp
		container/container.cpp models/Plant.cpp algorithms/algorithms.cpp models/Flower.cpp models/Shrub.cpp models/Tree.cpp)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BUILD_DIR}/bin")
set(BINARY_DIR "${CMAKE_BINARY_DIR}")


add_executable(program
        main.cpp
        ${HEADER_FILES}
        ${SOURCE_FILES}
        )
