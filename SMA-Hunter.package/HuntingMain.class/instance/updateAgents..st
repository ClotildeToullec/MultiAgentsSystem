running
updateAgents: nbTicks
	nbTicks % properties defenderLife == 0
		ifTrue: [ self createNewDefender ].
	super updateAgents: nbTicks