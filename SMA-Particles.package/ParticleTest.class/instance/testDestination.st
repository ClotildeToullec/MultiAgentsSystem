tests
testDestination
	self assert: agent1 destination isNotNil.
	self
		assert: agent2 destination
		equals: self position2 + self direction2