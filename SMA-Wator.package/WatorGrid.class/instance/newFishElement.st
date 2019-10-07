instance creation
newFishElement
	^ (BlCircle new extent: sma properties boxSize asPoint) asElement
		background: Color yellow;
		border: (BlBorder paint: Color yellow width: 0);
		yourself