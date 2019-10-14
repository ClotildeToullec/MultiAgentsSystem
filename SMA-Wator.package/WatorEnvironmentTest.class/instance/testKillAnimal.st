tests
testKillAnimal
	| animal1 animal2 animal3 animal4 |
	animal1 := main agents atRandom.
	animal2 := main agents atRandom.
	animal3 := main agents atRandom.
	animal4 := main agents atRandom.
	animal1 die.
	animal2 die.
	animal3 die.
	animal4 die.
	self
		assert:
			(environment agents flattened noneSatisfy: [ :animal | animal isDead ])