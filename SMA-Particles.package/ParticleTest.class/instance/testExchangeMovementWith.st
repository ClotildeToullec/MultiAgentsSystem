tests
testExchangeMovementWith
	self deny: agent1 hasBumped.
	self deny: agent2 hasBumped.

	"First exchange"
	agent1 exchangeMovementWith: agent2.
	self assert: agent1 direction equals: 0 @ 1.
	self assert: agent1 hasBumped.
	self assert: agent2 direction equals: -1 @ 0.
	self assert: agent2 hasBumped.

	"Second exchange"
	agent2 exchangeMovementWith: agent1.
	self assert: agent1 direction equals: -1 @ 0.
	self assert: agent1 hasBumped.
	self assert: agent2 direction equals: 0 @ 1.
	self assert: agent2 hasBumped