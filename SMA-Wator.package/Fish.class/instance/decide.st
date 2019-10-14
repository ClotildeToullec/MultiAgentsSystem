action
decide
	| previousPosition |
	super decide.
	isDead
		ifTrue: [ self assert: (environment agents includes: self) not.
			^ self ].
	previousPosition := self position.
	hasMoved := false.
	self move.
	lifeLength := lifeLength + 1.
	(lifeLength % breedTime = 0 and: [ hasMoved ])
		ifTrue: [ self cloneIn: previousPosition ]