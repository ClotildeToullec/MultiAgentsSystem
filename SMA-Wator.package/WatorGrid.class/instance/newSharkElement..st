instance creation
newSharkElement: aShark
	| color |
	color := aShark isNewBorn
		ifTrue: [ Color pink ]
		ifFalse: [ Color red ].
	^ (BlCircle new extent: sma properties boxSize asPoint) asElement
		background: color;
		border: (BlBorder paint: color width: 0);
		yourself