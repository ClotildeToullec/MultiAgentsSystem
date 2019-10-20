adapting
fillableCell: cell
	| wallNeighbors |
	wallNeighbors := cell fourNeighbors
		reject: [ :neighbor | visitedCells includes: neighbor ].
	^ wallNeighbors isEmpty or: [ wallNeighbors size > 2 ]