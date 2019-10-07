agents
updateAgent: anAgent
	| element |
	element := agents
		at: anAgent
		ifAbsent: [ ^ self "self halt: 'La vue ne connait pas l''agent'" ].
	anAgent isDead
		ifTrue: [ agents removeKey: anAgent.
			gridElement removeChild: element.
			^ self ].
	self updateAppearanceOf: element from: anAgent.
	element relocate: (grid at: anAgent x at: anAgent y)