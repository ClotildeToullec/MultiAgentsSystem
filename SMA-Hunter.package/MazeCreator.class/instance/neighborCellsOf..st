extending
neighborCellsOf: aPoint
	| step |
	step := (self isCell: aPoint)
		ifTrue: [ 2 ]
		ifFalse: [ 1 ].
	^ {(aPoint + (0 @ step)).
	(aPoint + (step negated @ 0)).
	(aPoint + (0 @ step negated)).
	(aPoint + (step @ 0))}
		reject: [ :point | 
			(self pointInsideExtent: point) not
				or: [ visitedCells includes: point ] ]