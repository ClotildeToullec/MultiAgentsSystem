agents
consumedDefender
	consumedDefenders := consumedDefenders + 1.
	consumedDefenders = 4
		ifTrue: [ self createNewWinner ]