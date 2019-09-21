running
runFromProperties
	<script>
	| env agents properties |
	properties := STONJSON
		fromStream:
			(FileSystem workingDirectory asFileReference / 'Properties')
				readStream.
	env := Environment new: properties.
	agents := self createAgents: properties in: env.
	env agents: agents.
	^ self new
		agents: agents environment: env;
		run