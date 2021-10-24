#define ERROR_CONTAINER_FULL_MSG "ERROR: Maximal container capacity is 10000 elements. Make sure you've entered the correct data."

#include <cstdlib>
#include "container.h"

Container *CreateContainer() {
    Container *container = (Container *) malloc(sizeof(Container));
    container->size = 0;
    for (int i = 0; i < MAX_SIZE; ++i) {
        container->elements[i] = NULL;
    }
    return container;
}

void DeleteContainer(Container *container) {
    container->size = -1;
    for (int i = 0; i < MAX_SIZE; ++i) {
        free(container->elements[i]);
    }
    free(container);
}

int AppendContainer(Container *container, Plant *plant) {
    if (container->size + 1 >= MAX_SIZE) {
        puts(ERROR_CONTAINER_FULL_MSG);
        return 0;
    } else {
        container->elements[(container->size)++] = plant;
        return 1;
    }
}

Plant *AtIndex(Container *container, int index) {
    if (index < 0 || index >= container->size) {
        return NULL;
    } else {
        return container->elements[index];
    }
}