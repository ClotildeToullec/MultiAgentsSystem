scheduling
equitable
	properties delay wait.
	agents shuffle.
	"agents shuffleBy: Random seed: parameters seed."
	agents do: [ :agent | self updateAgent: agent ]