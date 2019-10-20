agents
killDefender: aDefender
	self
		assert: (agents at: aDefender x at: aDefender y)
		equals: aDefender.
	(agents at: aDefender x) removeKey: aDefender y