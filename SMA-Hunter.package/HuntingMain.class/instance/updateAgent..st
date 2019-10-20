running
updateAgent: anAgent
	self isStopped
		ifTrue: [ ^ self ].
	super updateAgent: anAgent