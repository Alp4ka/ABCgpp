#ifndef PROGRAM_UTILS_H
#define PROGRAM_UTILS_H

#include "./../models/Plant.h"

const char kVowels[] = {'a', 'e', 'i', 'o', 'u', 'y', 'A', 'E', 'I', 'O', 'U', 'Y'};

int strlength(char line[]);

int RandomInt(int from, int to);

char *RandomString(int length);

int IsVowel(char symbol);

int CountVowels(char line[]);

double CountRelation(Plant plant);

#endif // PROGRAM_UTILS_H