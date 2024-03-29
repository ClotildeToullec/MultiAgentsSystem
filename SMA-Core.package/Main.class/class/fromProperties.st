instance creation
fromProperties
	| env agents properties |
	properties := STONJSON fromStream: self propertiesFile readStream.
	env := self newEnvironment: properties.
	agents := self createAgents: properties in: env.
	env addAgents: agents.
	^ self new
		properties: properties;
		agents: agents environment: env;
		scheduling: (self newScheduling: properties);
		yourself