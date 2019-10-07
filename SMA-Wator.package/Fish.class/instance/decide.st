action
decide
	| previousPosition |
	previousPosition := self position.
	hasMoved := false.
	isNewBorn := false.
	self move.
	lifeLength := lifeLength + 1.
	(lifeLength % breedTime = 0 and: [ hasMoved ])
		ifTrue: [ self cloneIn: previousPosition ]