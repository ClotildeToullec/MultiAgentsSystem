instance creation
createGridLines
	| verticalLines horizontalLines |
	verticalLines := (1 to: sma properties gridSizeX - 1)
		collect: [ :x | 
			(BlLine
				from: (sma properties boxSize x * x) @ 0
				to:
					(sma properties boxSize x * x)
						@ (sma properties boxSize x * sma properties gridSizeY))
				asElement ].
	horizontalLines := (1 to: sma properties gridSizeY - 1)
		collect: [ :y | 
			(BlLine
				from: 0 @ (sma properties boxSize y * y)
				to:
					(sma properties boxSize y * sma properties gridSizeX)
						@ (sma properties boxSize y * y)) asElement ].
	gridElement
		addChildren:
			{verticalLines.
			horizontalLines} flattened