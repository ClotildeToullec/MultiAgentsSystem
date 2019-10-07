instance creation
newFishAt: aPosition
	self
		assert: (self agents at: aPosition x at: aPosition y) isNil
		description: 'There is already something here: ' , aPosition printString.
	newBorns add: ((Fish new: properties in: self) position: aPosition)