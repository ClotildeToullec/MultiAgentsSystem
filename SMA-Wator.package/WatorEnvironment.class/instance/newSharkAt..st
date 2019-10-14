instance creation
newSharkAt: aPosition
	| newShark |
	self checkEmptyPosition: aPosition.
	newShark := (Shark new: properties in: self) position: aPosition.
	newBorns add: newShark.
	agents at: aPosition x at: aPosition y put: newShark