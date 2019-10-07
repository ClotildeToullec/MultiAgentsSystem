agents
moveAgent: anAgent to: aDestination
	agents at: anAgent x at: anAgent y put: nil.
	agents at: aDestination x at: aDestination y put: anAgent