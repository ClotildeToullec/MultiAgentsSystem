instance creation
newAgentElement: anAgent
	^ (BlCircle new extent: sma properties boxSize asPoint) asElement
		background: Color gray;
		border: (BlBorder paint: Color gray width: 0);
		yourself