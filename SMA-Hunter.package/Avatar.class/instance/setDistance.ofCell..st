action
setDistance: current ofCell: distance
	^ isInvincible
		ifTrue: [ (distance at: current) - 1 ]
		ifFalse: [ (distance at: current) + 1 ]