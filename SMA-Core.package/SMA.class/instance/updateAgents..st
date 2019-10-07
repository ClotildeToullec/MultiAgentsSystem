running
updateAgents: nbTicks
	self logTick: nbTicks.
	self perform: properties scheduling.
	nbTicks % properties refresh ~= 0
		ifTrue: [ ^ self ].
	"self announcer announce: (SMAUpdateAnnouncement new agents: agents)"