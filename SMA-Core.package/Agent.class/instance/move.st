accessing
move
	| newDestination neighbor |
	self bounce.
	newDestination := self position + self direction.
	neighbor := self meetsAgent: newDestination.
	neighbor == self
		ifTrue: [ self moveTo: newDestination.
			^ self ].
	neighbor
		ifNotNil: [ self exchangeMovementWith: neighbor.
			^ self ].
	self moveTo: newDestination