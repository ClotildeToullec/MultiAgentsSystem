initialization
initialize: aSMA
	sma := aSMA.
	container := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		color: Color transparent;
		borderColor: Color black;
		borderWidth: 1;
		layoutBounds:
			(0 @ 0 corner: sma properties canvasSizeX @ sma properties canvasSizeY).
	cells := Array2D
		rows: sma properties gridSizeY
		columns: sma properties gridSizeX.
	dimension := sma properties gridSizeX @ sma properties gridSizeY.
	self buildGrid