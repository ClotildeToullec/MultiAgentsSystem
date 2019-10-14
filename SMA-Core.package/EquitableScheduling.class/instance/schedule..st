schedulling
schedule: agents
	delay wait.
	agents shuffle.
	"agents shuffleBy: Random seed: parameters seed."
	agents do: [ :agent | system updateAgent: agent ]