#include <cstdlib>
#include <iostream>
#include "Shrub.h"

Shrub::Shrub(){}

Shrub::Shrub(char *name, BlossomTime blossom_time) : Plant(name){
    this->blossom_time = blossom_time;
}

const char *Shrub::getBlossomMonthName() {
    return this->kMonths[(int) this->blossom_time];
}

char *Shrub::repr(){
    char *result = (char *) malloc(1001);
    sprintf(result,
            "######__SHRUB__######\nName:\t%s\nBlossom time:\t%s\n#####################\n",
            this->getName(),
            this->getBlossomMonthName());
    return result;
}



