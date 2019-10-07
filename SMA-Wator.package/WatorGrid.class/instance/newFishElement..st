instance creation
newFishElement: aFish
	| color |
	color := aFish isNewBorn
		ifTrue: [ Color yellow ]
		ifFalse: [ Color green ].
	^ (BlCircle new extent: sma properties boxSize asPoint) asElement
		background: color;
		border: (BlBorder paint: color width: 0);
		yourself