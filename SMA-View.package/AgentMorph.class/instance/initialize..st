initialization
initialize: anAgent
	super initialize.
	self agent: anAgent.
	self setColor.
	self on: #click send: #inspect to: self.
	self borderWidth: 0