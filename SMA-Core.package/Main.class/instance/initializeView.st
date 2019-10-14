running
initializeView
	view := self newView.
	agents do: [ :agent | view addAgent: agent ].
	view open