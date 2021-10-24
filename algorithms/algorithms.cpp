#include <cstdlib>
#include "algorithms.h"
#include "./../models/plant.h"
#include "./../utils/utils.h"

void Merge(Container *container, int p, int q, int r) {
    int n1, n2, i, j, k;
    n1 = q - p + 1;
    n2 = r - q;
    Plant *L = (Plant *) malloc(sizeof(Plant) * n1);
    Plant *R = (Plant *) malloc(sizeof(Plant) * n2);
    for (i = 0; i < n1; i++) {
        L[i] = *AtIndex(container, p + i);
    }
    for (j = 0; j < n2; j++) {
        R[j] = *AtIndex(container, q + j + 1);
    }
    i = 0, j = 0;
    for (k = p; i < n1 && j < n2; k++) {
        if (CountRelation(L[i]) < CountRelation(R[j])) {
            *AtIndex(container, k) = L[i++];
        } else {
            *AtIndex(container, k) = R[j++];
        }
    }
    while (i < n1) {
        *AtIndex(container, k++) = L[i++];
    }
    while (j < n2) {
        *AtIndex(container, k++) = R[j++];
    }
}


void StraightMerge(Container *container, int p, int r) {
    int q;
    if (p < r) {
        q = (p + r) / 2;
        StraightMerge(container, p, q);
        StraightMerge(container, q + 1, r);
        Merge(container, p, q, r);
    }
}