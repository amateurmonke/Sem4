#include <stdio.h>
#include <stdlib.h>

int* dailyTemperatures(int* temperatures, int temperaturesSize, int* returnSize) {
    *returnSize = temperaturesSize;
    int* res = (int*)malloc(temperaturesSize * sizeof(int));
    for(int i = 0;i < temperaturesSize;i++) { res[i] = 0; }

    int *stack = (int*)malloc(temperaturesSize*sizeof(int));
    int top = -1;

    for(int i = 0;i < temperaturesSize;i++) {
        while(top >= 0 && temperatures[i] > temperatures[stack[top]]) {
            int index = stack[top--];
            res[index] = i - index;
        }
        stack[++top] = i;
    }

    free(stack);
    return res;
}

//driver code
int main() {
    int N;
    scanf("%d", &N);
    int* temperatures = (int*)malloc(N * sizeof(int));
    for (int i = 0; i < N; i++) {
        scanf("%d", &temperatures[i]);
    }
    int returnSize;
    int* answer = dailyTemperatures(temperatures, N, &returnSize);
    for (int i = 0; i < returnSize; i++) {
        printf("%d", answer[i]);
        if (i < returnSize - 1) printf(" ");
    }
    printf("\n");
    free(temperatures);
    free(answer);
    return 0;
}
