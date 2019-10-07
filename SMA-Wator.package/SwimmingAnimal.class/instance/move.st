accessing
move
	| newDestination neighbor |
	newDestination := self position + self direction.
	(self meetsFrontier: newDestination)
		ifTrue: [ self bounce.
			^ self ].
	neighbor := self meetsAgent: newDestination.
	neighbor == self
		ifTrue: [ self moveTo: newDestination.
			^ self ].
	neighbor
		ifNotNil: [ self exchangeMovementWith: neighbor.
			^ self ].
	self moveTo: newDestination