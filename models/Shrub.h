#ifndef PROGRAM_SHRUB_H
#define PROGRAM_SHRUB_H
#include "Plant.h"
struct Shrub:public Plant {
public:
    static const int kMonthsAmount = 12;

    enum BlossomTime {
        JAN,
        FEB,
        MAR,
        APR,
        MAY,
        JUN,
        JUL,
        SUG,
        SEP,
        OCT,
        NOV,
        DEC
    };

    BlossomTime blossom_time;

    Shrub();

    Shrub(char *name, BlossomTime blossom_time);

    // Represent object as string.
    char *repr();

    const char* getBlossomMonthName();

private:
    const char *kMonths[kMonthsAmount] =  {"January",
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
                                           "December" };

};
#endif //PROGRAM_SHRUB_H



