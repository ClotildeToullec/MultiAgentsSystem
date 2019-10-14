tests
testAgentsEnvironment
	| sma env agents |
	env := self environment.
	agents := self agents.
	sma := Main new agents: agents environment: env.
	env agents: agents.
	env agents do: [ :agent | agent environment: env ].
	self assertCollection: sma agents equals: env agents.
	self assertCollection: sma environment equals: env