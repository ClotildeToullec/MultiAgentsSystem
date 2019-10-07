agents
addAgentAt: aPoint
	gridElement
		addChild:
			(self newAgentElement
				relocate: (grid at: aPoint x at: aPoint y);
				yourself)