#ifndef PROGRAM_CONTAINER_H
#define PROGRAM_CONTAINER_H
#define MAX_SIZE 10000
#include "./../models/Plant.h"
struct Container{
    int size;
    Plant* elements[MAX_SIZE];
};

Container* CreateContainer();
void DeleteContainer(Container* container);
int AppendContainer(Container* container, Plant* plant);
Plant* AtIndex(Container* container, int index);

#endif //PROGRAM_CONTAINER_H
