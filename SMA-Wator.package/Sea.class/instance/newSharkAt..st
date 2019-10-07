instance creation
newSharkAt: aPosition
	self
		assert: (self agents at: aPosition x at: aPosition y) isNil
		description: 'There is already something here: ' , aPosition printString.
	newBorns add: ((Shark new: properties in: self) position: aPosition)