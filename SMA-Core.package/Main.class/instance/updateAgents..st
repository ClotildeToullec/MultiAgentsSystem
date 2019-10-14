running
updateAgents: nbTicks
	self logTick: nbTicks.
	scheduling schedule: agents.
	self flag: 'The following is used only if the view is refreshed after.'.
	nbTicks % properties refresh ~= 0
		ifTrue: [ ^ self ]