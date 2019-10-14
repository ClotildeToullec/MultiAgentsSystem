logging
logAgent: anAgent
	properties logTrace
		ifTrue: [ self log: anAgent printString ]