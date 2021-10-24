#include <cstdlib>
#include <string.h>
#include "plant.h"


Plant *FReadData(FILE *input_file) {
    int plant_type;
    int type_checker = fscanf(input_file, "%d", &plant_type);
    if (type_checker != 1) {
        return NULL;
    }
    if (plant_type < 0 || plant_type >= PLANT_TYPES_LENGTH) {
        return NULL;
    }

    Plant *plant = (Plant *) malloc(sizeof(Plant));
    char name[1001];
    plant->p_type = (Plant::plant_type) plant_type;
    switch (plant->p_type) {
        case Plant::FLOWER: {
            int flower_type;
            int check = fscanf(input_file, "%s %d", name, &flower_type);
            if (check != 2) {
                return NULL;
            }
            if (flower_type < 0 || flower_type >= TYPES_LENGTH) {
                return NULL;
            }
            plant->name = (char *) malloc(1001);
            strcpy(plant->name, name);
            plant->p_type = Plant::FLOWER;
            plant->flower.f_type = (Flower::flower_type) flower_type;
            return plant;
        }
        case Plant::SHRUB: {
            int blossom;
            int check = fscanf(input_file, "%s %d\n", name, &blossom);
            if (check != 2) {
                return NULL;
            }
            if (blossom < 0 || blossom >= MONTHS_LENGTH) {
                return NULL;
            }
            plant->name = (char *) malloc(1001);
            strcpy(plant->name, name);
            plant->p_type = Plant::SHRUB;
            plant->shrub.b_time = (Shrub::blossom_time) blossom;
            return plant;
        }
        case Plant::TREE: {
            int age;
            int check = fscanf(input_file, "%s %d\n", name, &age);
            if (check != 2) {
                return NULL;
            }
            if (age < 0 || age > MAX_AGE) {
                return NULL;
            }
            plant->name = (char *) malloc(1001);
            strcpy(plant->name, name);
            plant->p_type = Plant::TREE;
            plant->tree.age = age;
            return plant;
        }
        default: {
            return NULL;
        }
    }
}

char *ReprPlant(const Plant *plant) {
    char *result = (char *) malloc(1001);
    switch (plant->p_type) {
        case Plant::FLOWER: {
            const char *kFlowerTypes[TYPES_LENGTH] = {"Domestic", "Garden", "Wild"};
            sprintf(result, "######__FLOWER__#####\nName:\t%s\nType:\t%s\n#####################\n", plant->name,
                    kFlowerTypes[(int) plant->flower.f_type]);
            return result;
        }
        case Plant::SHRUB: {
            const char *kMonths[MONTHS_LENGTH] = {"January",
                                                  "February",
                                                  "March",
                                                  "April",
                                                  "May",
                                                  "June",
                                                  "July",
                                                  "August",
                                                  "September",
                                                  "October",
                                                  "November",
                                                  "December"
            };
            sprintf(result, "######__SHRUB__######\nName:\t%s\nBlossom time:\t%s\n#####################\n", plant->name,
                    kMonths[(int) plant->shrub.b_time]);
            return result;
        }
        case Plant::TREE: {
            sprintf(result, "######__TREE__#######\nName:\t%s\nAge:\t%lld y\n#####################\n", plant->name,
                    plant->tree.age);
            return result;
        }
        default: {
            return NULL;
        }
    }
}

