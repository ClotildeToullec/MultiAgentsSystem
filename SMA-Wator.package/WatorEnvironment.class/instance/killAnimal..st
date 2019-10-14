life and death
killAnimal: aSwimmingAnimal
	self
		assert: (agents at: aSwimmingAnimal x at: aSwimmingAnimal y)
		equals: aSwimmingAnimal.
	(agents at: aSwimmingAnimal x) removeKey: aSwimmingAnimal y