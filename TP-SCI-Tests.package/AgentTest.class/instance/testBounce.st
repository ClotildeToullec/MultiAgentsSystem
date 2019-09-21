tests
testBounce
	| pasX pasY |
	pasX := agent1 pasX.
	pasY := agent1 pasY.
	self deny: agent1 hasBumped.
	agent1 bounce.
	self assert: agent1 pasX equals: pasX negated.
	self assert: agent1 pasY equals: pasY negated.
	self assert: agent1 hasBumped