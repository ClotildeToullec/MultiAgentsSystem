agent handling
showAgent: anAgent
	submorphs
		ifEmpty: [ self
				addMorphCentered: (AgentCell agent: anAgent extent: self extent) ].
	submorphs first show