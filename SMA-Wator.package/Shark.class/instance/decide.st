action
decide
	| previousPosition |
	previousPosition := self position.
	isNewBorn := false.
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