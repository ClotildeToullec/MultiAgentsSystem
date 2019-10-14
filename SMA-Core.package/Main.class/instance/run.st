running
run
	| nbTicks |
	isStopped := false.
	self initializeView.
	self logInitialization.
	nbTicks := 1.
	[ [ self shouldStop: nbTicks ]
		whileFalse: [ self updateAgents: nbTicks.
			nbTicks := nbTicks + 1 ] ] fork