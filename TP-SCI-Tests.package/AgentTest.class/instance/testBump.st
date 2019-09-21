tests
testBump
	self deny: agent1 hasBumped.
	self deny: agent2 hasBumped.
	self deny: agent3 hasBumped.
	agent1 bounce.
	agent2 exchangeMovementWith: agent3.
	self assert: agent1 hasBumped.
	self assert: agent2 hasBumped.
	self assert: agent3 hasBumped