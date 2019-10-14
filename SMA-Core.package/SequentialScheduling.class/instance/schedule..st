schedulling
schedule: agents
	delay wait.
	agents do: [ :agent | system updateAgent: agent ]