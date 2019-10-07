updating
updateAgents: anAnnouncement
	cells do: [ :cell | cell hideAgent ].
	anAnnouncement agents
		do: [ :agent | self showAgent: agent at: agent position ]