tests
testMeetsFrontier
	environment isToric: false.
	self assert: agent1 meetsFrontier.
	self deny: agent2 meetsFrontier.
	self assert: agent3 meetsFrontier.
	self deny: agent4 meetsFrontier.
	environment isToric: true.
	self deny: agent1 meetsFrontier.
	self deny: agent2 meetsFrontier.
	self deny: agent3 meetsFrontier.
	self deny: agent4 meetsFrontier