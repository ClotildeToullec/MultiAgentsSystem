testing
adaptUntoric: aPoint
	| x y |
	x := aPoint x.
	y := aPoint y.
	x = 0
		ifTrue: [ x := 1 ].
	x = (gridSizeX + 1)
		ifTrue: [ x := gridSizeX ].
	y = 0
		ifTrue: [ y := 1 ].
	y = (gridSizeY + 1)
		ifTrue: [ y := gridSizeY ].
	^ x @ y