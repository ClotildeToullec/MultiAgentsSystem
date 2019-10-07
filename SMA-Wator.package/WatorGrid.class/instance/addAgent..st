agents
addAgent: anAgent
	| firstSize |
	firstSize := agents size.
	agents
		at: anAgent
		put:
			((anAgent isShark
				ifTrue: [ self newSharkElement: anAgent ]
				ifFalse: [ self newFishElement: anAgent ])
				relocate: (grid at: anAgent x at: anAgent y);
				yourself).
	gridElement addChild: (agents at: anAgent).
	self
		assert: agents size = (firstSize + 1)
		description: 'Un agent est écrasé ?'