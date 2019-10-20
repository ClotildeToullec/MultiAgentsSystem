agents
updateAgent: anAgent
	| element |
	element := agents at: anAgent ifAbsent: [ ^ self ].
	anAgent isDead
		ifTrue: [ self removeAgent: anAgent element: element.
			^ self ].
	self updateAppearanceOf: element from: anAgent.
	element relocate: (grid at: anAgent x at: anAgent y)