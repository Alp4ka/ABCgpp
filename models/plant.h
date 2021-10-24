#ifndef PROGRAM_PLANT_H
#define PROGRAM_PLANT_H
#define PLANT_TYPES_LENGTH 3

#include <stdio.h>
#include "flower.h"
#include "shrub.h"
#include "tree.h"


struct Plant {
    enum plant_type {
        FLOWER = 0,
        SHRUB = 1,
        TREE = 2
    } p_type;

    union {
        Flower flower;
        Shrub shrub;
        Tree tree;
    };
    char *name;
};

Plant *FReadData(FILE *input_file);

char *ReprPlant(const Plant *plant);

#endif //PROGRAM_PLANT_H
