running
run
	(agents noneSatisfy: [ :agent | agent isAvatar ])
		ifTrue: [ self initializeView.
			^ self ].
	isStopped := false.
	self avatar
		when: DefenderWasConsumed
		send: #consumedDefender
		to: self.
	self initializeView.
	self createNewDefender.
	self avatar decide.
	self logInitialization.
	nbTicks := 1.
	[ [ self shouldStop: nbTicks ]
		whileFalse: [ self updateAgents: nbTicks.
			nbTicks := nbTicks + 1 ] ] fork