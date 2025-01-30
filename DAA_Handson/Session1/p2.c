#include <stdio.h>
#include <stdlib.h>

int calc(int cost[], int i, int n) {
    if (i >= n) { return 0; }
    if (i == n - 1) { return cost[i]; }
    
    int s1 = calc(cost, i + 1, n);
    int s2 = calc(cost, i + 2, n);

    return cost[i] + ((s1 < s2)?s1:s2);
}

int minCostClimbingStairs(int cost[], int n) {
    if(n == 0 || n == 1) { return 0; }

    int case1 = calc(cost, 0, n);
    int case2 = calc(cost, 1, n);

    return (case1 < case2)?case1:case2;
}

//Driver Code
int main() {
    int n;
    scanf("%d", &n);
    int *cost = (int *)malloc(n * sizeof(int));
    if (cost == NULL) {
        printf("Memory allocation failed\n");
    return 1;
    }
    for (int i = 0; i < n; i++) {
        scanf("%d", &cost[i]);
    }
    int result = minCostClimbingStairs(cost, n);
    printf("%d\n", result);
    free(cost);
    return 0;
}
