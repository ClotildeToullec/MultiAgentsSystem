testing
agentIn: aPoint
	^ agents at: aPoint x at: aPoint y
	"agents detect: [ :agent | agent position = aPoint ] ifNone: [ nil ]"