agents
createNewWinner
	| point winner |
	point := properties gridSizeX atRandom
		@ properties gridSizeY atRandom.
	[ point := (environment agentIn: point)
		ifNil: [ point ]
		ifNotNil: [ (environment pointsAround: point)
				detect: [ :aPoint | (environment agentIn: aPoint) isNil ] ] ]
		on: NotFound
		do: [ :e | ^ self ].
	winner := Winner newAt: point in: environment.
	agents := {agents.
	winner} flattened.
	environment agents at: winner x at: winner y put: winner.
	view addAgent: winner