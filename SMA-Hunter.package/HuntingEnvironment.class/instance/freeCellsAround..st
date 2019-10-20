accessing
freeCellsAround: aPoint
	| allNeighbors |
	allNeighbors := self pointsAround: aPoint.
	^ allNeighbors
		reject: [ :point | 
			| agt |
			agt := agents at: point x at: point y ifAbsent: [  ].
			agt isNotNil and: [ agt isWall ] ]