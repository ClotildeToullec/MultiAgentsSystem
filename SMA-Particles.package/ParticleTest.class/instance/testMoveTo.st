tests
testMoveTo
	| newPosition |
	newPosition := self position2 + self direction2.
	agent2 moveTo: newPosition.
	self assert: agent1 position equals: 1 @ 1.
	self
		assert: (environment agents at: self position2 x at: self position2 y) isNil.
	self
		assert: (environment agents at: newPosition x at: newPosition y)
		equals: agent2