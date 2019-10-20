action
decide
	| neighbors bestNeighbor bestDistance |
	tick := tick + 1.
	tick % speed = 0
		ifFalse: [ ^ self ].
	neighbors := ((environment freeCellsAround: self position)
		collect: [ :point | environment distancesToAvatar associationAt: point ])
		asDictionary.
	bestNeighbor := neighbors keys atRandom.
	bestDistance := neighbors at: bestNeighbor.
	neighbors
		associationsDo: [ :assoc | 
			assoc value <= bestDistance
				ifTrue: [ bestNeighbor := assoc key.
					bestDistance := assoc value ] ].
	bestDistance = 0
		ifTrue: [ self stopGame.
			^ self ].
	self moveTo: bestNeighbor