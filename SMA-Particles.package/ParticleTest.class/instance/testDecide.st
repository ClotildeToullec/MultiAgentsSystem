tests
testDecide
	environment isToric: false.
	agent1 decide.
	agent2 decide.
	agent3 decide.
	self assert: agent1 position equals: self position1.
	self assert: agent2 position equals: self position2.
	self assert: agent3 position equals: self position3.
	self resetAgents.
	agent4 decide.
	self assert: agent4 position equals: 16 @ 17.
	self resetAgents.
	environment isToric: true.
	agent1 decide.
	agent2 decide.
	agent3 decide.
	self assert: agent1 position equals: 30 @ 1.
	self assert: agent2 position equals: self position2.
	self assert: agent3 position equals: 29 @ 1