running
run
	isStopped := false.
	view := SMAView model: self.
	view open.
	self announcer
		when: SMAUpdateAnnouncement
		send: #updateAgents:
		to: view.
	agents do: [ :agent | view addAgent: agent at: agent position ].
	[ [isStopped] whileFalse: [ self updateAgents ] ] fork