tests
testKillAnimal2
	main agents do: [ :agt | agt decide ].
	self
		assert:
			(environment agents flattened noneSatisfy: [ :animal | animal isDead ])