action
decide
	isDead
		ifTrue: [ ^ self ].
	tick := tick + 1.
	life == tick
		ifTrue: [ self die ]