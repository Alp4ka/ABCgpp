#ifndef PROGRAM_TREE_H
#define PROGRAM_TREE_H
#include "Plant.h"
class Tree : public Plant{
private:
    int age;

public:
    static const int kMaxAge = 10000;

    Tree();

    Tree(char *name, int age);

    int getAge();

    void setAge(int value);

    // Represent object as string.
    char *repr();
};

#endif //PROGRAM_TREE_H

