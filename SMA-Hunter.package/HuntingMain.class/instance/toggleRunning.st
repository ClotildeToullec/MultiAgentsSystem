running
toggleRunning
	isFinish
		ifTrue: [ self restart.
			^ self ].
	isStopped
		ifTrue: [ self resume ]
		ifFalse: [ self stop ]