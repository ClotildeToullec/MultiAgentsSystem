helpers
resetAgents
	agent1 := (Agent newAt: self position1 in: environment)
		direction: self direction1;
		yourself.
	agent2 := (Agent newAt: self position2 in: environment)
		direction: self direction2;
		yourself.
	agent3 := (Agent newAt: self position3 in: environment)
		direction: self direction3;
		yourself.
	agent4 := (Agent newAt: self position4 in: environment)
		direction: self direction4;
		yourself.
	environment
		addAgents:
			{agent1.
			agent2.
			agent3.
			agent4}