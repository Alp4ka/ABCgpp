#ifndef PROGRAM_FLOWER_H
#define PROGRAM_FLOWER_H
#include "Plant.h"

class Flower : public Plant{
public:
    static const int kTypesSize = 3;

    enum FlowerType {
        DOMESTIC,
        GARDEN,
        WILD
    };

    FlowerType flower_type;

    Flower();

    Flower(char *name, FlowerType flower_type);

    // Represent object as string.
    char *repr();

    const char* getTypeName();
private:
    // Easy convert enum to string value.
    const char *kFlowerTypes[kTypesSize] = {"Domestic", "Garden", "Wild"};

};

#endif //PROGRAM_FLOWER_H