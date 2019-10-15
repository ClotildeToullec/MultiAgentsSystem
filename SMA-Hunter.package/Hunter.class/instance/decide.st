action
decide
	| neighbors bestNeighbor bestDistance |
	neighbors := environment freeCellsAround: self position.
	neighbors := (neighbors
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
		ifTrue: [ HuntingMain stop.
			UIManager default alert: 'Avatar died'.
			^ self ].
	self moveTo: bestNeighbor