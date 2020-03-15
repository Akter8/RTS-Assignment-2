CC=gcc

flags=-c

executableName=test

driver = driverMain

outputFile = outputFile.txt

#all: PeriodicTask

all: $(driver).o driverPeriodicTask.o printInfo.o checks.o frameConditions.o createTaskInstances.o calculateSchedule.o inputs.o split.o driverNonPeriodicJob.o sort.o scheduler.o utilityFunctions.o
	$(CC)  $(driver).o driverPeriodicTask.o printInfo.o checks.o frameConditions.o createTaskInstances.o calculateSchedule.o inputs.o split.o driverNonPeriodicJob.o sort.o scheduler.o utilityFunctions.o -o $(executableName)

$(driver).o: $(driver).c
	$(CC) $(flags) $(driver).c

driverPeriodicTask.o: driverPeriodicTask.c
	$(CC) $(flags) driverPeriodicTask.c

driverNonPeriodicJob.o: driverNonPeriodicJob.c
	$(CC) $(flags) driverNonPeriodicJob.c

scheduler.o: scheduler.c
	$(CC) $(flags) scheduler.c

sort.o: sort.c
	$(CC) $(flags) sort.c

printInfo.o: printInfo.c
	$(CC) $(flags) printInfo.c

frameConditions.o: frameConditions.c
	$(CC) $(flags) frameConditions.c

createTaskInstances.o: createTaskInstances.c
	$(CC) $(flags) createTaskInstances.c

calculateSchedule.o: calculateSchedule.c
	$(CC) $(flags) calculateSchedule.c

checks.o: checks.c
	$(CC) $(flags) checks.c

inputs.o: inputs.c
	$(CC) $(flags) inputs.c

split.o: split.c
	$(CC) $(flags) split.c

utilityFunctions.o: utilityFunctions.c
	$(CC) $(flags) utilityFunctions.c

clean:
	rm -f *.o $(executableName) $(outputFile)
