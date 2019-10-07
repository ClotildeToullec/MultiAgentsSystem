testing
adaptToric: aPoint
	| x y |
	x := aPoint x.
	y := aPoint y.
	x = 0
		ifTrue: [ x := gridSizeX ].
	x = (gridSizeX + 1)
		ifTrue: [ x := 1 ].
	y = 0
		ifTrue: [ y := gridSizeY ].
	y = (gridSizeY + 1)
		ifTrue: [ y := 1 ].
	^ x @ y