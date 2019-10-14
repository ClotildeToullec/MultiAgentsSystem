life and death
includeNewBorns
	newBorns
		do: [ :animal | 
			animal isDead
				ifTrue:
					[ self assert: (agents flattened noneSatisfy: [ :an | an == animal ]) ] ].
	newBorns := OrderedCollection new