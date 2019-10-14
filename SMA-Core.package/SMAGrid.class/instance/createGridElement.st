instance creation
createGridElement
	gridElement := BlElement new
		size: (sma properties pixelSizeX + 2) @ (sma properties pixelSizeY + 2);
		"relocate: 10 @ 10;"
			background: self backgroundColor;
		border: (BlBorder paint: Color black width: 2);
		"2 = border"
			yourself