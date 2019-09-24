running
updateAgents: nbTicks
	"'New turn' crLog."

	properties delay wait.
	agents shuffle.
	"agents shuffleBy: Random seed: parameters seed."
	agents
		do: [ :agent | 
			agent decide
			"agent crLog" ].
	nbTicks % properties refresh ~= 0
		ifTrue: [ ^ self ].
	self announcer announce: (SMAUpdateAnnouncement new agents: agents)