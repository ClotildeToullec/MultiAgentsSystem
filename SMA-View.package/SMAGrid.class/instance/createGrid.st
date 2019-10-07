grid
createGrid
	grid := Array2D
		rows: sma properties gridSizeX
		columns: sma properties gridSizeY.
	grid := grid
		indicesCollect: [ :y :x | 
			"row - column"
			(sma properties boxSize x * (x - 1))
				@ (sma properties boxSize y * (y - 1)) ]