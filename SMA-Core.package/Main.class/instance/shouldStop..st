accessing
shouldStop: anInt
	properties nbTicks = 0
		ifTrue: [ ^ isStopped ].
	anInt > properties nbTicks
		ifTrue: [ isStopped := true ].
	^ isStopped