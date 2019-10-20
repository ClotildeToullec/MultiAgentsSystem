running
restart
	environment := self class newEnvironment: properties.
	agents := self class createAgents: properties in: environment.
	avatar := self resetAvatar.
	environment addAgents: agents.
	isStopped := false.
	isFinish := false.
	view clear.
	agents do: [ :agent | view addAgent: agent ].
	self avatar
		when: DefenderWasConsumed
		send: #consumedDefender
		to: self.
	self createNewDefender.
	self avatar decide.
	self logRestart.
	nbTicks := 1.
	[ [ self shouldStop: nbTicks ]
		whileFalse: [ self updateAgents: nbTicks.
			nbTicks := nbTicks + 1 ] ] fork