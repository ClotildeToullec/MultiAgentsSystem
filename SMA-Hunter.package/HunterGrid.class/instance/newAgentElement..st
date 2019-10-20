instance creation
newAgentElement: anAgent
	^ (BlElement new size: sma properties boxSize asPoint) asElement
		background: (self colorOf: anAgent);
		border: (BlBorder paint: (self colorOf: anAgent) width: 0);
		yourself