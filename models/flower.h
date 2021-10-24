#ifndef PROGRAM_FLOWER_H
#define PROGRAM_FLOWER_H
#define TYPES_LENGTH 3
struct Flower {
    enum flower_type {
        DOMESTIC,
        GARDEN,
        WILD
    } f_type;
};

#endif //PROGRAM_FLOWER_H