tests
testNewDestination
	environment isToric: false.
	self assert: agent1 newDestination equals: 0 @ 1.
	self assert: agent2 newDestination equals: 15 @ 16.
	self assert: agent3 newDestination equals: 29 @ 31.
	environment isToric: true.
	self assert: agent1 newDestination equals: 30 @ 1.
	self assert: agent2 newDestination equals: 15 @ 16.
	self assert: agent3 newDestination equals: 29 @ 1