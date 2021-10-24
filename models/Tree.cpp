#include <cstdlib>
#include "Tree.h"

Tree::Tree(){}

Tree::Tree(char *name, int age) : Plant(name){
    this->age = age;
}

int Tree::getAge() {
    return age;
}

void Tree::setAge(int value) {
    if(value > kMaxAge){
        value = kMaxAge;
    }
    if(value < 0){
        value = 0;
    }
    this->age = value;
}

char *Tree::repr(){
    char *result = (char *) malloc(1001);
    sprintf(result,
            "######__TREE__#######\nName:\t%s\nAge:\t%lld y\n#####################\n",
            this->getName(),
            this->getAge());
    return result;
}