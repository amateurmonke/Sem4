#include <stdio.h>

void findtat(int processes[], int wt[], int bt[], int n, int tat[])
{
    for(int i = 0; i < n; i++)
        tat[i] = bt[i] + wt[i];
}

void findwt(int processes[], int wt[], int bt[], int n)
{
    wt[0] = 0;
    for(int i = 1; i < n; i++)
    {
        wt[i] = bt[i - 1] + wt[i - 1];
    }
}

void findavgTime(int processes[], int n, int bt[])
{
    int wt[n], tat[n], tot_wt = 0, tot_tat = 0;
    findwt(processes, wt, bt, n);
    findtat(processes, wt, bt, n, tat);
    printf("Processes\tBurstTime\tWaitTime\tTurnaroundTime\n");
    for(int i = 0; i < n; i++)
    {
        tot_wt += wt[i];
        tot_tat += tat[i];
        printf("%d\t\t%d\t\t%d\t\t%d\n", processes[i], bt[i], wt[i], tat[i]);
    }

    float avg_wt = (float)tot_wt / n;
    float avg_tat = (float)tot_tat / n;
    printf("Avg. WT = %.2f\n", avg_wt);
    printf("Avg. TAT = %.2f\n", avg_tat);
}

int main()
{
    int processes[] = {1, 2, 3};
    int n = sizeof(processes) / sizeof(processes[0]);
    int burst_time[] = {10, 5, 8};  

    findavgTime(processes, n, burst_time);

    return 0;
}
