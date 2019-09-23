running
updateAgents
	"(Delay forSeconds: 0.25) wait."
	agents shuffle.
	"agents shuffleBy: Random seed: parameters seed."
	agents do: [ :agent | agent decide ].
	self announcer announce: (SMAUpdateAnnouncement new agents: agents)