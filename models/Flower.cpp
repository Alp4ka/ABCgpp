#include <cstdlib>
#include <iostream>
#include "Flower.h"

Flower::Flower(){}

Flower::Flower(char *name, FlowerType flower_type) : Plant(name){
    this->flower_type = flower_type;
}

const char *Flower::getTypeName() {
    return this->kFlowerTypes[(int) this->flower_type];
}

char *Flower::repr(){
    char *result = (char *) malloc(1001);
    sprintf(result,
            "######__FLOWER__#####\nName:\t%s\nType:\t%s\n#####################\n",
            this->getName(),
            this->getTypeName());
    return result;
}

