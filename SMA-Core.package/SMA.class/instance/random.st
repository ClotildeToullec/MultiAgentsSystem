scheduling
random
	properties delay wait.
	1 to: agents size do: [ :i | self updateAgent: agents atRandom ]