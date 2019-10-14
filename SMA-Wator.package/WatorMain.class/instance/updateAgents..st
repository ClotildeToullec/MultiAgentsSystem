running
updateAgents: nbTicks
	| newBorns |
	self
		assert: view agents size = agents size
		description: 'Pas les bons agents'.
	super updateAgents: nbTicks.
	view removeDeadAnimals.
	newBorns := environment newBorns.
	newBorns do: [ :animal | view addAgent: animal ].
	environment includeNewBorns.
	agents := environment agents flattened.
	self
		assert: view agents size = agents size
		description: 'Pas les bons agents'.
	"view agents keys. agents."
	nbTicks % properties refresh ~= 0
		ifTrue: [ ^ self ]