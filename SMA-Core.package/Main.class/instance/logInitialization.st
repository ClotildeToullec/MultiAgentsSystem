logging
logInitialization
	properties logTrace
		ifFalse: [ ^ self ].
	Transcript open.
	self log: 'Running'