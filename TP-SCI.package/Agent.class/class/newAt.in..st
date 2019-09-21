instance creation
newAt: aPosition in: anEnvironment
	^ self new
		position: aPosition;
		environment: anEnvironment;
		yourself