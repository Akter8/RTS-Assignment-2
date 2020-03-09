float calculateCpuUtilisation(Task *, int);
int findHyperPeriod(Task *, int);
int gcd(int, int);
int frameSizeCondition1(Task *, int);
int frameSizeCondition2(int, int *);
int frameSizeCondition3(int *, Task *, int, int, int *);
void createTaskInstances(Task *, TaskInstance *, int, int, int, int);
void calculateSchedule(TaskInstance *, int, int, int, Frame *);
void printTaskInfo(Task *, int);
void printJobInfo(TaskInstance *, int);
void printFrameInfo(Frame *, int);