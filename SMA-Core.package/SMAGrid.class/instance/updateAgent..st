agents
updateAgent: anAgent
	| element |
	element := agents at: anAgent.
	self updateAppearanceOf: element from: anAgent.
	element relocate: (grid at: anAgent x at: anAgent y)