action
decide
	| neighbor |
	self newDestination.
	self meetsFrontier
		ifTrue: [ self bounce.	"Inversion des pas mais ne bouge pas"
			^ self ].
	neighbor := self meetsAgent.
	neighbor
		ifNotNil:
			[ self exchangeMovementWith: neighbor.	"Échange des directions mais ne bouge pas."
			^ self ].
	self position: self destination