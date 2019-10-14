schedulling
schedule: agents
	delay wait.
	1 to: agents size do: [ :i | system updateAgent: agents atRandom ]