#define ERROR_CONTAINER_FULL_MSG "ERROR: Maximal container capacity is 10000 elements. Make sure you've entered the correct data."

#include <cstdlib>
#include "container.h"

int Container::length() {
    return this->current_size;
}

Container::Container() {
    this->current_size = 0;
    for (int i = 0; i < MAX_SIZE; ++i) {
        this->elements[i] = NULL;
    }
}

void Container::setAt(int index, Plant *plant) {
    this->elements[index] = plant;
}

Container::~Container() {
    this->current_size = -1;
    for (int i = 0; i < MAX_SIZE; ++i) {
        free(this->elements[i]);
    }
    free(this);
}

bool Container::append(Plant *plant) {
    if (this->current_size + 1 > MAX_SIZE) {
        puts(ERROR_CONTAINER_FULL_MSG);
        return false;
    } else {
        this->elements[(this->current_size)++] = plant;
        return true;
    }
}

Plant *Container::atIndex(int index) {
    if (index < 0 || index >= this->current_size) {
        return NULL;
    } else {
        return this->elements[index];
    }
}