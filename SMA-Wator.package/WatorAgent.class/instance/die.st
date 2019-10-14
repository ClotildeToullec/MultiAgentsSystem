life
die
	isDead := true.
	environment killAnimal: self.
	self
		assert: (environment agents includes: self) not
		description: 'Not dead'