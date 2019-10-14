testing
checkNoZombies
	self
		assert: (agents flattened noneSatisfy: [ :animal | animal isDead ])
		description: 'Environment includes zombies'