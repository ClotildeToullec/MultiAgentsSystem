action
decide
	| previousPosition |
	super decide.
	isDead
		ifTrue: [ self assert: (environment agents includes: self) not.
			^ self ].
	previousPosition := self position.
	hasMoved := false.
	"Mort ?"
	lastMeal = starveTime
		ifTrue: [ self die.
			^ self ].
	"Mange + bouge ?"
	self feedAndMove.
	hasMoved
		ifTrue: [ ^ self ].
	"Pas mort et pas bougé"
	lastMeal := lastMeal + 1.
	self move.
	lifeLength := lifeLength + 1.
	"Clone ?"
	(lifeLength % breedTime == 0 and: [ hasMoved ])
		ifTrue: [ self cloneIn: previousPosition ]