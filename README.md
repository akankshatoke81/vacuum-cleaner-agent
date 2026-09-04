Vacuum Cleaner Intelligent Agent

## Problem Statement

Demonstrate PEAS Descriptors of Task Environment using Vacuum Cleaner Intelligent Agent Application.

## Objective

- To understand the concept of an intelligent agent.
- To understand the PEAS framework.
- To identify the Performance Measure, Environment, Actuators, and Sensors of a vacuum cleaner.
- To understand how an intelligent vacuum cleaner makes decisions.

## Technology Used

- Prolog
- SWI-Prolog
- SWISH (SWI-Prolog Online)

## PEAS Description

PEAS Component Description 
Performance Measure- Maximum cleanliness, minimum time, minimum energy consumption, obstacle avoidance
Environment- Rooms, floors, dirt, walls, furniture, obstacles
Actuators- Wheels, motors, suction motor, turning mechanism 
Sensors- Dirt sensor, obstacle sensor, position sensor, battery sensor

## Environment

The vacuum cleaner operates in three rooms:
Initially:

Room A is dirty.
Room B is clean.
Room C is dirty.
Vacuum starts in Room A.
Working

The vacuum cleaner:
Detects whether the current room is dirty.
Cleans the room if dirt is detected.
Moves to the next room.
Cleans the remaining dirty room.
Stops when all rooms are clean.

## How to Run
Open the program in SWI-Prolog or SWISH.
Run the following query:
start.

## Sample Output
Vacuum cleaned room a.
Vacuum moved from room a to room b.
Vacuum moved from room b to room c.
Vacuum cleaned room c.
All rooms are clean.
true.

## Observation
The vacuum cleaner successfully identified and cleaned the dirty rooms. It moved from Room A to Room B and then to Room C. After cleaning all dirty rooms, the agent stopped automatically.

## Conclusion
The PEAS descriptors of the Vacuum Cleaner Intelligent Agent were successfully studied and demonstrated using Prolog. The agent identified dirty rooms, cleaned them, moved between rooms, and stopped when all rooms were clean.
