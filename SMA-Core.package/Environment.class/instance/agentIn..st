testing
agentIn: aPoint
	^ agents at: aPoint x at: aPoint y ifAbsent: [ nil ]