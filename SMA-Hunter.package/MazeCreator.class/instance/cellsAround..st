adapting
cellsAround: aWall
	| cellNeighbors |
	cellNeighbors := aWall eightNeighbors
		select: [ :neighbor | visitedCells includes: neighbor ].
	^ cellNeighbors