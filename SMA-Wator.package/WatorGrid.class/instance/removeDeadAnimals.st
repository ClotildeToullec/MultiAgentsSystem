agents
removeDeadAnimals
	| deads |
	deads := agents keys select: [ :animal | animal isDead ].
	deads
		do: [ :anAgent | 
			| element |
			element := agents at: anAgent ifAbsent: [ ^ self ].
			anAgent isDead
				ifTrue: [ self removeAgent: anAgent element: element ] ]