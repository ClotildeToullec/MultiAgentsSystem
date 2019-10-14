tests
testBounce
	| pasX |
	pasX := agent1 pasX.
	agent1 bounce.
	self assert: agent1 pasX equals: pasX negated.
	self flag: 'Test incomplet'