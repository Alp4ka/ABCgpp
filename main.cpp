#define _CRT_SECURE_NO_WARNINGS
#define MAX_NAME_LENGTH 20
#define ERROR_WRONG_ARGS_MSG "ERROR: Not enough arguments!"
#define ERROR_WRONG_INPUTFILE_MSG   "ERROR: Something went wrong while accessing data from input file. " \
                                    "Make sure it's correct"
#define ERROR_WRONG_OUTPUTFILE_MSG "ERROR: Someting went wrong while accessing output file. Make sure it's currect"
#define INFO_BASE_MSG   "INFO:\n" \
                        "\tYou can run program via: \n" \
                        "\t\tprogram *input_file.txt* *output_file.txt\n" \
                        "\tAlso you can type:\n" \
                        "\t\tprogram -h to see all flags that are allowed for you."
#define INFO_HELP_MSG   "INFO:\n" \
                        "######Plants project v1.0######\n" \
                        "Author: Roman Gorkovets, BPI204\n" \
                        "USE GUIDE:\n" \
                        "\n" \
                        "\tFLAGS:\n" \
                        "\t\t -h \n" \
                        "\t\t\tShows help message(current)\n" \
                        "\t\t\tExample#1: .program -h\n" \
                        "\n" \
                        "\t\t -s \n" \
                        "\t\t\tShows the output on screen(and output file too)\n" \
                        "\t\t\tExample#1: .program -s input_file.txt output_file.txt\n" \
                        "\n" \
                        "\t\t -r number\n" \
                        "\t\t\tGenerates random input for the program. It will write random input data to input_file.txt!\n" \
                        "\t\t\tExample#1: .program -r 3 input_file.txt output_file.txt\n" \
                        "\t\t\tExample#2: .program -s -r 100 input_file.txt output_file.txt\n" \
                        "\n" \
                        "\tSTANDARD:\n" \
                        "\t\tprogram input.txt output.txt"

#include <stdio.h>
#include "utils/utils.h"
#include <cstring>
#include <time.h>
#include <stdlib.h>
#include "models/plant.h"
#include "container/container.h"
#include "models/flower.h"
#include "models/tree.h"
#include "models/shrub.h"
#include "algorithms/algorithms.h"


const char *kHelpMessageFlag = "-h";
const char *kScreenOutputFlag = "-s";
const char *kRandomInputFlag = "-r";

static int SCREEN_OUTPUT = 0;
static int RANDOM_INPUT = 0;
static int RANDOM_NUM = -1;

/*
 * Shows help message
 */
void ShowHelpMessage() {
    puts(INFO_HELP_MSG);
}

/*
 * Sets the SCREE_OUTPUT parameter to 1(true).
 */
void EnterScreenOutput() {
    SCREEN_OUTPUT = 1;
}

/*
 * Enters random input mode, with definite number of elements.
 */
void EnterRandomInput(int random_num) {
    RANDOM_INPUT = 1;
    RANDOM_NUM = random_num;
}

/*
 * Shows message on the screen, whether this mode in on.
 */
void ShowMsg(char *message) {
    if (SCREEN_OUTPUT == 1) {
        puts(message);
    }
}

/*
 * Generate plant with defined type for random input.
 */
void GeneratePlant(char *output, Plant::plant_type plant_type) {
    int f_type, b_time, t_age;
    char *name = (char *) (malloc(sizeof(char) * MAX_NAME_LENGTH + 1));
    int random_size = RandomInt(3, MAX_NAME_LENGTH);
    strcpy(name, RandomString(random_size));
    switch (plant_type) {
        case Plant::FLOWER:
            f_type = RandomInt(0, TYPES_LENGTH);
            sprintf(output, "%s %d", name, f_type);
            return;
        case Plant::SHRUB:
            b_time = RandomInt(0, MONTHS_LENGTH);
            sprintf(output, "%s %d", name, b_time);
            return;
        case Plant::TREE:
            t_age = RandomInt(1, MAX_AGE);
            sprintf(output, "%s %d", name, t_age);
            return;
        default:
            return;
    }
}

/*
 * Generate random input as array of cstrings.
 */
char **GenerateRandomInput(int required_size) {
    char **result = new char *[required_size * 2 + 1];
    result[0] = new char[5];
    sprintf(result[0], "%d", required_size);
    for (int i = 1; i < required_size * 2; i += 2) {
        int plant_type = RandomInt(0, 3);
        result[i] = new char[2];
        sprintf(result[i], "%d", plant_type);
        result[i + 1] = new char[255];
        GeneratePlant(result[i + 1], (Plant::plant_type) plant_type);
    }
    return result;
}

/*
 * Handle flags in input arguments.
 */
int HandleFlags(int argc, char *argv[]) {
    for (int i = 0; i < argc; ++i) {
        if (strcmp(argv[i], kHelpMessageFlag) == 0) {
            ShowHelpMessage();
            return 0;
        } else if (strcmp(argv[i], kScreenOutputFlag) == 0) {
            EnterScreenOutput();
        } else if (strcmp(argv[i], kRandomInputFlag) == 0) {
            int random_num;
            sscanf(argv[i + 1], "%d", &random_num);
            EnterRandomInput(random_num);
        }
    }
    return 1;
}

/*
 * Writes array of cstring in file.
 */
void WriteToFile(FILE *file, char **data, int size) {
    fprintf(file, "%s\n", data[0]);
    ShowMsg(data[0]);
    for (int i = 1; i < size - 1; i += 2) {
        int age;
        fprintf(file, "%s\n", data[i]);
        ShowMsg(data[i]);
        fprintf(file, "%s\n", data[i + 1]);
        ShowMsg(data[i + 1]);
    }
}

/*
 * Writes container containing in file.
 */
void WriteToFile(FILE *file, Container *container, int time) {
    if (time == 0) {
        fprintf(file, "-------INPUT------\nNumber of elements: %d\n", container->size);
        char str_size[255];
        sprintf(str_size, "-------INPUT------\nNumber of elements: %d", container->size);
        ShowMsg(str_size);
    } else {
        fprintf(file, "-------OUTPUT------\nNumber of elements: %d\n", container->size);
        char str_size[255];
        sprintf(str_size, "-------OUTPUT------\nNumber of elements: %d", container->size);
        ShowMsg(str_size);
    }
    for (int i = 0; i < container->size; ++i) {
        char *data = ReprPlant(AtIndex(container, i));
        if (time != 0) {
            double relation = CountRelation(*AtIndex(container, i));
            fprintf(file, "%sRelation: %f\n\n", data, relation);
            ShowMsg(data);
            char rel[255];
            sprintf(rel, "Relation: %f\n", relation);
            ShowMsg(rel);
        } else {
            fprintf(file, "%s\n", data);
            ShowMsg(data);
        }
        free(data);
    }
    fprintf(file, "___________________________________________\n");
    ShowMsg("___________________________________________");
    if (time != 0) {
        char time_res[255];
        sprintf(time_res, "Time: %d ms", time / 10);
        fprintf(file, "%s\n", time_res);
        ShowMsg(time_res);
    }

}


/*
 * Get input file from input arguments.
 */
FILE *GetInputFile(int argc, char *argv[]) {
    FILE *result;
    if (RANDOM_INPUT == 1) {
        result = fopen(argv[argc - 2], "w+");
    } else {
        result = fopen(argv[argc - 2], "r");
    }
    return result;
}

/*
 * Get output file from input arguments.
 */
FILE *GetOutputFile(int argc, char *argv[]) {
    FILE *result = fopen(argv[argc - 1], "w");
    return result;
}

/*
 * Read input to and fill container.
 */
void ReadInput(FILE *input_file, Container *container) {
    int size;
    fscanf(input_file, "%d", &size);
    for (int i = 0; i < size; ++i) {
        Plant *plant = FReadData(input_file);
        AppendContainer(container, plant);
    }

}

int main(int argc, char *argv[]) {
    srand(time(NULL));
    FILE *input_file;
    FILE *output_file;
    Container *container = CreateContainer();
    if (HandleFlags(argc, argv) == 0) {
        return 0;
    }
    input_file = GetInputFile(argc, argv);
    output_file = GetOutputFile(argc, argv);
    // Handling situation with lack of arguments.
    if (argc < 3) {
        puts(INFO_BASE_MSG);
        puts(ERROR_WRONG_ARGS_MSG);
        return 1;
    }
    // Handling situation with empty input_file arg.
    if (input_file == NULL) {
        puts(ERROR_WRONG_INPUTFILE_MSG);
        return 1;
    }
    // Handling situation with null output_file.
    if (output_file == NULL) {
        puts(ERROR_WRONG_OUTPUTFILE_MSG);
        return 1;
    }
    char **input;
    if (RANDOM_INPUT) {
        int size = RANDOM_NUM;
        input = GenerateRandomInput(size);
        WriteToFile(input_file, input, size * 2 + 1);
        fclose(input_file);
        RANDOM_INPUT = 0;
        input_file = GetInputFile(argc, argv);
    }
    // Filling container.
    ReadInput(input_file, container);

    // Write results.
    WriteToFile(output_file, container, 0);
    int start = clock();
    StraightMerge(container, 0, container->size - 1);
    WriteToFile(output_file, container, (clock() - start) / 10);

    fclose(input_file);
    fclose(output_file);
    DeleteContainer(container);
    return 0;
}
