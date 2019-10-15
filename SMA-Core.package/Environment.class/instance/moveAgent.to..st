agents
moveAgent: anAgent to: aDestination
	(agents at: anAgent x)
		at: anAgent y
		ifPresent: [ (agents at: anAgent x) removeKey: anAgent y ].
	agents at: aDestination x at: aDestination y put: anAgent