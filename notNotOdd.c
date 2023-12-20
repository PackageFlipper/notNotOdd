#include <stdio.h>
#include "notNotOdd.h"

int notNotOddNotNotEvenChecker(int number) {
    switch (number) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
        case 10:
        case 12:
        case 14:
        case 16:
        case 18:
        case 20:
        case 22:
        case 24:
        case 26:
        case 28:
        case 30:
        case 32:
        case 34:
        case 36:
        case 38:
        case 40:
        case 42:
        case 44:
        case 46:
        case 48:
        case 50: return (number + 1) % 2;
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 11:
        case 13:
        case 15:
        case 17:
        case 19:
        case 21:
        case 23:
        case 25:
        case 27:
        case 29:
        case 31:
        case 33:
        case 35:
        case 37:
        case 39:
        case 41:
        case 43:
        case 45:
        case 47:
        case 49: return (number + 1) % 2;
        default: return notNotOddNotNotEvenChecker(number - 2);
    }

    return notNotOddNotNotEvenChecker(number - 2);
}

int notNotOddNotNotOddChecker(int number) {
    number += 42069;
    return notNotOddNotNotEvenChecker(number);
}

#define RESULT_SIZE 6
int main(int argc, char *argv[])
{
    int results[RESULT_SIZE]; 
    results[0] = notNotOddNotNotEvenChecker(2);
    results[1] = notNotOddNotNotEvenChecker(69);
    results[2] = notNotOddNotNotEvenChecker(420);
    results[3] = notNotOddNotNotOddChecker(2);
    results[4] = notNotOddNotNotOddChecker(69);
    results[5] = notNotOddNotNotOddChecker(420);

    for (int i = 0; i < RESULT_SIZE; i++) {
        if (results[i]) {
            printf("true ");
        }
        else 
        {
            printf("false ");
        }
    }
    printf("\n");

    return 0;
}
