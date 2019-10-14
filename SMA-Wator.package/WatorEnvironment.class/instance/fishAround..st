testing
fishAround: aShark
	| surroundings neighbors |
	surroundings := self pointsAround: aShark position.
	neighbors := (surroundings collect: [ :point | self agentIn: point ])
		asSet.
	^ neighbors
		detect: [ :agent | agent isNotNil and: [ agent isShark not ] ]
		ifFound: [ :point | self agentIn: point ]
		ifNone: [ nil ]