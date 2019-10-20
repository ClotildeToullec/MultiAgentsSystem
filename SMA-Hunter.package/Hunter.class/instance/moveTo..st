action
moveTo: aDestination
	| neighbor |
	neighbor := self meetsAgent: aDestination.
	neighbor == self
		ifTrue: [ super moveTo: aDestination.
			^ self ].
	neighbor
		ifNotNil: [ neighbor isWall
				ifTrue: [ ^ self ].
			self exchangeMovementWith: neighbor.
			^ self ].
	super moveTo: aDestination