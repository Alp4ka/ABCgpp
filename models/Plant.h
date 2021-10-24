#ifndef PROGRAM_PLANT_H
#define PROGRAM_PLANT_H
#define PLANT_TYPES_LENGTH 3

#include <stdio.h>
class Plant {
private:
    char name[10001];

public:
    enum PlantType {
        FLOWER = 0,
        SHRUB = 1,
        TREE = 2
    };

    Plant();

    Plant(char *name);

    char *getName();

    void setName(char *new_name);

    static Plant *readData(FILE *file);

    // Represent object as string.
    virtual char *repr();
};
#endif //PROGRAM_PLANT_H
