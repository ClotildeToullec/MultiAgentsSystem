testing
agentIn: aPoint
	^ agents detect: [ :agent | agent position = aPoint ] ifNone: [ nil ]