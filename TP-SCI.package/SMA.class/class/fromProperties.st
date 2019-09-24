instance creation
fromProperties
	| env agents properties |
	properties := STONJSON
		fromStream:
			(FileSystem workingDirectory asFileReference / 'Properties')
				readStream.
	env := Environment new: properties.
	agents := self createAgents: properties in: env.
	env addAgents: agents.
	^ (self new: properties)
		agents: agents environment: env;
		yourself