instance creation
newFishAt: aPosition
	| newFish |
	self checkEmptyPosition: aPosition.
	newFish := (Fish new: properties in: self) position: aPosition.
	newBorns add: newFish.
	agents at: aPosition x at: aPosition y put: newFish