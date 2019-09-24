tests
testMeetsAgent
self flag: 'isToric true is a hack'.
	environment isToric: true.
	self assert: agent1 meetsAgent isNil.
	self assert: agent2 meetsAgent equals: agent4.
	self assert: agent3 meetsAgent isNil.
	self assert: agent4 meetsAgent isNil