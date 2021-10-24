#include "algorithms.h"
#include "./../models/Plant.h"
#include "./../utils/utils.h"

void Merge(Container *container, int p, int q, int r) {
    int n1, n2, i, j, k;
    n1 = q - p + 1;
    n2 = r - q;
    Plant **L = new Plant*[n1];
    Plant **R = new Plant*[n2];
    for (i = 0; i < n1; i++) {
        L[i] = container->atIndex(p+i);
    }
    for (j = 0; j < n2; j++) {
        R[j] = container->atIndex(q+j+1);
    }
    i = 0, j = 0;
    for (k = p; i < n1 && j < n2; k++) {
        if (CountRelation(*L[i]) < CountRelation(*R[j])) {
            container->setAt(k, L[i++]);
        } else {
            container->setAt(k, R[j++]);
        }
    }
    while (i < n1) {
        container->setAt(k++, L[i++]);
    }
    while (j < n2) {
        container->setAt(k++, R[j++]);
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