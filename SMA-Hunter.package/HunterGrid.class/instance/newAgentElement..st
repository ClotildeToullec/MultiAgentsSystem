instance creation
newAgentElement: anAgent
	anAgent isWall
		ifTrue: [ ^ (BlElement new size: sma properties boxSize asPoint) asElement
				background: Color gray;
				border: (BlBorder paint: Color gray width: 0);
				yourself ].
	anAgent isAvatar
		ifTrue: [ ^ (BlCircle new extent: sma properties boxSize asPoint) asElement
				background: Color yellow;
				border: (BlBorder paint: Color yellow width: 0);
				yourself ].
	anAgent isHunter
		ifTrue: [ ^ (BlCircle new extent: sma properties boxSize asPoint) asElement
				background: Color red;
				border: (BlBorder paint: Color red width: 0);
				yourself ]