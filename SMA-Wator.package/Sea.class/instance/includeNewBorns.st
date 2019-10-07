as yet unclassified
includeNewBorns
	newBorns := newBorns reject: [ :animal | animal isDead ].
	newBorns
		do: [ :animal | self agents at: animal x at: animal y put: animal ].
	newBorns := OrderedCollection new