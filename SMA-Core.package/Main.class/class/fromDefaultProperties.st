instance creation
fromDefaultProperties
	| env agents properties |
	properties := self newProperties.
	env := self newEnvironment: properties.
	agents := self createAgents: properties in: env.
	env addAgents: agents.
	^ self new
		properties: properties;
		agents: agents environment: env;
		scheduling: (self newScheduling: properties);
		yourself