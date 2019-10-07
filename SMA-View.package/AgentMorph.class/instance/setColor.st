initialization
setColor
	color := agent hasBumped
		ifFalse: [ Color gray ]
		ifTrue: [ Color red ]