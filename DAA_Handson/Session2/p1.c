#include <stdio.h>
#include <limits.h>

#define MAX 15

void readInput(int *n, int latency[MAX][MAX]) {
    scanf("%d", n);
    for (int i = 0; i < *n; i++) {
        for (int j = 0; j < *n; j++) {
            scanf("%d", &latency[i][j]);
        }
    }
}

int calculateLatency(int n, int latency[MAX][MAX], int path[]) {
    int lag = 0;
    
    for(int i = 0;i < n - 1;i++) { lag += latency[path[i]][path[i + 1]]; }
    lag += latency[path[n - 1]][path[0]];
    
    return lag;
}

void generatePermutations(int n, int *minLatency, int latency[MAX][MAX]) {
    int path[MAX];
    for(int i = 0;i < MAX;i++) { path[i] = i; }
    
    while(1) {
        int curLag = calculateLatency(n, latency, path);
        if(*minLatency > curLag) { *minLatency = curLag; }
        
        int i = n - 2;
        while(i >= 0 && path[i] >= path[i + 1]) { i--; }

        if(i == -1) { break; }

        int j = n - 1;
        while(path[j] <= path[i]) { j--; }

        int t = path[i];
        path[i] = path[j];
        path[j] = t;

        int l = i + 1, r = n - 1;
        while(l < r) {
            t = path[l];
            path[l] = path[r];
            path[r] = t;
            l++;
            r--;
        }
    }
}

int main() {
    int n;
    int latency[MAX][MAX];
    int minLatency = INT_MAX; // inf

    readInput(&n, latency);

    generatePermutations(n, &minLatency, latency);

    printf("%d\n", minLatency);

    return 0;
}
