tests
testBump
	self deny: agent1 hasBumped.
	self deny: agent2 hasBumped.
	agent1 exchangeMovementWith: agent2.
	self assert: agent1 hasBumped.
	self assert: agent2 hasBumped