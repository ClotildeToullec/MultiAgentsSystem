extending
destroyWallTo: nextCell
	| wallToDestroy |
"	(self isCell: currentCell)
		ifFalse: [ ^ self ]."
	wallToDestroy := (currentCell + nextCell) / 2.
	walls remove: wallToDestroy ifAbsent: [  ].
	visitedCells add: wallToDestroy