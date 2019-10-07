instance creation
new: properties in: aSea
	^ self new
		breedTime: properties sharkBreedTime;
		starveTime: properties sharkStarveTime;
		environment: aSea;
			direction: self randomDirection;
		yourself