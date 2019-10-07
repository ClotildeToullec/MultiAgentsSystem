running
updateAgents: nbTicks
	| newBorns |
	self logTick: nbTicks.
	self perform: properties scheduling.
"	self
		assert: blView agents size = agents size
		description: 'Pas les bons agents AVANT les newBorns'."
	newBorns := environment newBorns reject: [ :animal | animal isDead ].
	environment includeNewBorns.
	agents := environment agents asOrderedCollection
		reject: [ :agent | agent isNil ].
	newBorns do: [ :animal | blView addAgent: animal ].
"	self
		assert: blView agents size = agents size
		description: 'Pas les bons agents'."
	nbTicks % properties refresh ~= 0
		ifTrue: [ ^ self ]