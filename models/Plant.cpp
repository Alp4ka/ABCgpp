#include <cstdlib>
#include <string.h>
#include "Plant.h"
#include "Flower.h"
#include "Shrub.h"
#include "Tree.h"
char *Plant::getName(){
    char* temp;
    strcpy(temp, this->name);
    return temp;
}

void Plant::setName(char *new_name){
    strcpy(this->name, new_name);
}

Plant::Plant(){
    this->name = (char *)malloc(1001);
}

Plant::Plant(char *name){
    Plant();
    this->setName(name);
}

char* Plant::repr(){
    char *representation = (char *) malloc(1001);;
    sprintf(representation, "Base Plant with name: %s", this->name);
    return representation;
}

Plant *Plant::readData(FILE *file) {
    int plant_type_int;
    int arg_checker = fscanf(file, "%d", &plant_type_int);
    if (arg_checker != 1 || plant_type_int < 0 || plant_type_int >= PLANT_TYPES_LENGTH) {
        return NULL;
    }

    Plant *plant;
    char name[1001];
    auto plant_type = (Plant::PlantType) plant_type_int;

    switch (plant_type) {
        case Plant::FLOWER: {
            int flower_type_int;
            arg_checker = fscanf(file, "%s %d", name, &flower_type_int);
            if (arg_checker != 2 || flower_type_int < 0 || flower_type_int >= Flower::kTypesSize) {
                return NULL;
            }
            auto flower_type = (Flower::FlowerType) flower_type_int;
            plant = new Flower(name, flower_type);
            return plant;
        }
        case Plant::SHRUB: {
            int blossom_time_int;
            arg_checker = fscanf(file, "%s %d\n", name, &blossom_time_int);
            if (arg_checker != 2 || blossom_time_int < 0 || blossom_time_int >= Shrub::kMonthsAmount) {
                return NULL;
            }
            auto blossom_time = (Shrub::BlossomTime) blossom_time_int;
            plant = new Shrub(name, blossom_time);
            return plant;
        }
        case Plant::TREE: {
            int age;
            arg_checker = fscanf(file, "%s %d\n", name, &age);
            if (arg_checker !=  2|| age < 0 || age > Tree::kMaxAge) {
                return NULL;
            }
            plant = new Tree(name, age);
            return plant;
        }
        default: {
            return NULL;
        }
    }
}

