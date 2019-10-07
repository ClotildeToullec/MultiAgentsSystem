instance creation
newAt: aPosition in: anEnvironment
	^ self new
		position: aPosition;
		direction: self randomDirection;
		environment: anEnvironment;
		yourself