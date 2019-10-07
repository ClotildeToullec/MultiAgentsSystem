instance creation
newAgentElement
	^ (BlCircle new extent: sma properties boxSize asPoint) asElement
		background: Color gray;
		border: (BlBorder paint: Color red width: 0);
		yourself