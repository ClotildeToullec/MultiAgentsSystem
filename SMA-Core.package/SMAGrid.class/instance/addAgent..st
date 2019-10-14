agents
addAgent: anAgent
	agents
		at: anAgent
		put:
			((self newAgentElement: anAgent)
				relocate: (grid at: anAgent x at: anAgent y);
				yourself).
	gridElement addChild: (agents at: anAgent)