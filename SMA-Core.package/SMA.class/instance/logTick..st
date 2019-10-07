logging
logTick: nbTicks
	properties logTrace
		ifTrue: [ self log: 'Tick ' , nbTicks asString ]