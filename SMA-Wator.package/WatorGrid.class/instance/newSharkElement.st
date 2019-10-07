instance creation
newSharkElement
	^ (BlCircle new extent: sma properties boxSize asPoint) asElement
		background: Color pink;
		border: (BlBorder paint: Color pink width: 0);
		yourself