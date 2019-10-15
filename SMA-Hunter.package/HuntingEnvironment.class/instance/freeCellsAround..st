accessing
freeCellsAround: aPoint
	| allNeighbors |
	allNeighbors := self pointsAround: aPoint.
	^ allNeighbors
		reject:
			[ :point | (agents at: point x at: point y ifAbsent: [  ]) isKindOf: Wall ]