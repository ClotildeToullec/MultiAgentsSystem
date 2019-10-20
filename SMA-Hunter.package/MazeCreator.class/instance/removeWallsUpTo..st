adapting
removeWallsUpTo: nbWalls
	| weightedWalls |
	self
		log: 'Begin removal: ' , walls size printString , Character cr asString.
	weightedWalls := Dictionary
		newFromKeys: (1 to: 8)
		andValues: (8 timesCollect: [ Set new ]).
	walls
		do: [ :w | (weightedWalls at: (self cellsAround: w) size) add: w ].
	[ walls size > nbWalls ]
		whileTrue: [ 1 to: 8 do: [ :i | 
				(weightedWalls at: i) isNotEmpty
					ifTrue: [ | wall |
						wall := (weightedWalls at: i) atRandom.
						(self wallsAround: wall)
							do: [ :w | 
								| nbNeighbors |
								nbNeighbors := (self cellsAround: w) size.
								(weightedWalls at: nbNeighbors) remove: w.
								(weightedWalls at: nbNeighbors + 1) add: w ].
						(weightedWalls at: i) remove: wall.
						walls remove: wall.
						visitedCells add: wall ] ] ].
	self
		log: 'Finish removal: ' , walls size printString , Character cr asString