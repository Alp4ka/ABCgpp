#include <stdlib.h>
#include "utils.h"

/*
 * Get string length.
 */
int strlength(char line[]) {
    int counter = 0;
    while (line[counter] != '\0') {
        counter++;
    }
    return counter;
}

/*
 * Proper segment random.
 */
int RandomInt(int from, int to) {
    return from + rand() % (to - from);
}

/*
 * Generate random string with specified length.
 */
char *RandomString(int length) {
    char *result = new char[length];
    const char kAlphabet[] = "QWERTYUIOPASDFGHJKLZXCVBNM-qwertyuiopasdfghjklzxcvbnm";
    for (int i = 0; i < length; ++i) {
        result[i] = kAlphabet[RandomInt(0, strlength(const_cast<char *>(kAlphabet)))];
    }
    return result;
}

/*
 * Check whether the symbol is a vowel letter.
 */
int IsVowel(char symbol) {
    for (int i = 0; i < 12; ++i) {
        if (symbol == kVowels[i]) {
            return 1;
        }
    }
    return 0;
}

/*
 * Count vowel letters in word.
 */
int CountVowels(char line[]) {
    int counter = 0;
    for (int i = 0; i < strlength(line); ++i) {
        if (IsVowel(line[i]) == 1) {
            ++counter;
        }
    }
    return counter;
}

/*
 * Count relation between vowels and length in word.
 */
double CountRelation(Plant plant) {
    int len = strlength(plant.getName());
    //printf("name: %s    length: %d        vowels: %d\n", plant.name, len, CountVowels(plant.name));
    if (len == 0) {
        return 0.0;
    }
    return (CountVowels(plant.getName()) * 1.0) / strlength(plant.getName());
}