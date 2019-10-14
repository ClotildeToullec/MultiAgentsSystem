helpers
agents
	^ {(Agent newAt: 1 @ 1 in: self environment).
	(Agent newAt: 10 @ 4 in: self environment).
	(Agent newAt: 24 @ 30 in: self environment).
	(Agent newAt: 9 @ 13 in: self environment)}