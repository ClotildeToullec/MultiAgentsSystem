initialization
initialize: anAgent
	super initialize.
	self agent: anAgent.
	self setColor.
	self
		borderColor: Color black;
		borderWidth: 1.
	self extent: 10 @ 10