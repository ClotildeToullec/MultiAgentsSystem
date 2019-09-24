tests
testAgentIn
	| agent1 agent2 |
	agent1 := Agent newAt: 12 @ 9 in: environment.
	agent2 := Agent newAt: 3 @ 29 in: environment.
	environment
		addAgents:
			{agent1.
			agent2}.
	self assert: (environment agentIn: 12 @ 9) == agent1.
	self assert: (environment agentIn: 3 @ 29) == agent2.
	self assert: (environment agentIn: 11 @ 9) isNil