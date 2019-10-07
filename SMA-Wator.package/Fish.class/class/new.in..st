instance creation
new: properties in: aSea
	^ self new
		breedTime: properties fishBreedTime;
		environment: aSea;
		direction: self randomDirection;
		yourself