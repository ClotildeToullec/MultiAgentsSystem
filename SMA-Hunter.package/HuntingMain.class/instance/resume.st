running
resume
	isStopped := false.
	self logRestart.
	[ [ self shouldStop: nbTicks ]
		whileFalse: [ self updateAgents: nbTicks.
			nbTicks := nbTicks + 1 ] ] fork