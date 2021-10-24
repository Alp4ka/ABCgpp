#ifndef PROGRAM_CONTAINER_H
#define PROGRAM_CONTAINER_H
#define MAX_SIZE 10000
#include "./../models/Plant.h"


class Container{
public:
    static const int kMaxSize = 10000;
private:
    int current_size;
    Plant *elements[kMaxSize];
public:
    int length();
    Container();
    ~Container();
    bool append(Plant* plant);
    Plant *atIndex(int index);
    void setAt(int index, Plant *plant);
};
#endif //PROGRAM_CONTAINER_H
