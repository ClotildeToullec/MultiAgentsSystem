extending
createInitialSituation
	unvisitedCells := Set new.
	walls := Set new.
	1 to: extent x do: [ :x | 
		1 to: extent y do: [ :y | 
			| point |
			point := x @ y.
			(self isCell: point)
				ifTrue: [ unvisitedCells add: point ]
				ifFalse: [ walls add: point ] ] ].
	currentCell := unvisitedCells atRandom.
	unvisitedCells remove: currentCell.
	visitedCells := Set new
		add: currentCell;
		yourself.
	cellsWithNeighbors := OrderedCollection new.
	self
		log: 'Current cell: ' , currentCell printString , Character cr asString