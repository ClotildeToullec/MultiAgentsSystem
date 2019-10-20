accessing
announcer
	^ announcer := announcer ifNil: [ Announcer new ]