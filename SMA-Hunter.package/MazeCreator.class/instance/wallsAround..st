adapting
wallsAround: aWall
	| cellNeighbors |
	cellNeighbors := aWall eightNeighbors
		select: [ :neighbor | walls includes: neighbor ].
	^ cellNeighbors