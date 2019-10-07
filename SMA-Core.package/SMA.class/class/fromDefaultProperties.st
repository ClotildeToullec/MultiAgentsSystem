instance creation
fromDefaultProperties
	| env agents properties |
	properties := self newProperties.
	env := Environment new: properties.
	agents := self createAgents: properties in: env.
	env addAgents: agents.
	^ (self new: properties)
		agents: agents environment: env;
		yourself