adapting
adaptToWallPercent: anInteger
	| nbWalls |
	nbWalls := anInteger * extent x * extent y / 100 round: 0.
	self log: nbWalls printString , Character cr asString.
	nbWalls = 0
		ifTrue: [ visitedCells addAll: walls.
			walls := Set new.
			^ self ].
	nbWalls >= (extent x * extent y)
		ifTrue: [ walls addAll: visitedCells.
			visitedCells := Set new.
			^ self ].
	walls size < nbWalls
		ifTrue: [ self addWallsUpTo: nbWalls ].
	walls size > nbWalls
		ifTrue: [ self removeWallsUpTo: nbWalls ].
	self
		log:
			'Adapted: '
				,
					((walls size / (extent x * extent y) asFloat round: 2) * 100)
						printString , ' %'