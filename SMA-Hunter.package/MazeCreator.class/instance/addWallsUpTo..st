adapting
addWallsUpTo: nbWalls
	[ walls size < nbWalls ]
		whileTrue: [ | cellToFill |
			cellToFill := visitedCells
				detect: [ :cell | self fillableCell: cell ]
				ifNone: [ visitedCells
						detect: [ :cell | self angleCell: cell ]
						ifNone: [ visitedCells atRandom ] ].
			visitedCells remove: cellToFill.
			walls add: cellToFill ]