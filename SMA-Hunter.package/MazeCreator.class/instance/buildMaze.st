extending
buildMaze
	self createInitialSituation.
	[ unvisitedCells isNotEmpty ] whileTrue: [ self growMaze ].
	self
		log:
			'Finished: '
				,
					((walls size / (extent x * extent y) asFloat round: 2) * 100)
						printString , ' %' , Character cr asString