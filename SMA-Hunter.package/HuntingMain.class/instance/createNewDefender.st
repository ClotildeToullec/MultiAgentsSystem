agents
createNewDefender
	| point defender |
	point := properties gridSizeX atRandom
		@ properties gridSizeY atRandom.
	[ point := (environment agentIn: point)
		ifNil: [ point ]
		ifNotNil: [ (environment pointsAround: point)
				detect: [ :aPoint | (environment agentIn: aPoint) isNil ] ] ]
		on: NotFound
		do: [ :e | ^ self ].
	defender := Defender newAt: point in: environment.
	defender life: properties defenderLife.
	agents := {agents. defender} flattened.
	environment agents at: defender x at: defender y put: defender.
	view addAgent: defender