initialization
initialize: aSMA
	container := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		color: Color transparent;
		borderColor: Color black;
		borderWidth: 1.
	sma := aSMA.
	cells := Array2D
		rows: sma environment gridSizeY
		columns: sma environment gridSizeX.
	agentSize := 6 @ 6.
	dimension := sma environment gridSizeX @ sma environment gridSizeY.
	self buildGrid