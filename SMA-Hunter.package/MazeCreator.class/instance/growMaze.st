extending
growMaze
	| neighbors nextCell |
	neighbors := self neighborCellsOf: currentCell.
	neighbors isEmpty
		ifTrue: [ currentCell := cellsWithNeighbors removeLast.
			self
				log: 'Back to ' , currentCell printString , Character cr asString.
			^ self ].
	nextCell := neighbors atRandom.
	self destroyWallTo: nextCell.
	unvisitedCells remove: nextCell ifAbsent: [  ].
	visitedCells add: nextCell.
	neighbors size > 1
		ifTrue: [ cellsWithNeighbors add: currentCell.
			self
				log: 'Store ' , currentCell printString , Character cr asString ].
	currentCell := nextCell.
	self
		log: 'Current cell: ' , currentCell printString , Character cr asString