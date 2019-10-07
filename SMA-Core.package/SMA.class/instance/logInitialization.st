logging
logInitialization
	properties logTrace
		ifTrue: [ Transcript open.
			self log: 'Running' ]