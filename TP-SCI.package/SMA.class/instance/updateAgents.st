running
updateAgents
	"'New turn' crLog."

	properties delay wait.
	agents shuffle.
	"agents shuffleBy: Random seed: parameters seed."
	agents
		do: [ :agent | 
			agent decide
			"agent crLog" ].
	self announcer announce: (SMAUpdateAnnouncement new agents: agents)