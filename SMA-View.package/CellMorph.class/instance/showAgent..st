agent handling
showAgent: anAgent
	submorphs
		ifEmpty: [ self
				addMorphCentered: (AgentMorph agent: anAgent extent: self extent) ].
	submorphs first show: anAgent