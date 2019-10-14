agents
addAgent: anAgent
	| firstSize |
	firstSize := agents size.
	super addAgent: anAgent.
	self
		assert: agents size = (firstSize + 1)
		description: 'Un agent est écrasé ?'