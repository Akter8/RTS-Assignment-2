/*
 * Author: Akhil Tarikere
 * Date: 10/3/20
 * 
 * To store the input data in appropriate data structures.
 *	
 */

#include <stdbool.h>

typedef struct
{
	int jobNum;
	float arrivalTime;
	float wcet;
	bool alive;
}
AperiodicJob;


typedef struct
{
	int jobNum;
	float arrivalTime;
	float wcet;
	float deadline;
	// [startFrame, maxFrame);
	// [.] => can use that frame as well.
	// (.) => cannot use that frame.
	int startFrame;
	int maxFrame;
	bool alive;
}
SporadicJob;

typedef struct
{
	int taskNum;
	int instanceNum;
	int splitNum;
	float wcet;
	bool alive;
}
PeriodicJob;

typedef struct
{
	int frameNum;
	int numPeriodicJobs;
	int numSporadicJobs;
	SporadicJob *sporadicJobs;
	PeriodicJob *periodicJobs;
	float slack;
}
ScheduleFrame;