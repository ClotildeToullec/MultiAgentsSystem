testing
adaptCoordinates: aPoint
	^ self isToric
		ifTrue: [ self adaptToric: aPoint ]
		ifFalse: [ self adaptUntoric: aPoint ]