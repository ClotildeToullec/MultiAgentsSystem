as yet unclassified
fishAround: aShark
	| center surroundings |
	center := aShark position.
	surroundings := {(center + (1 @ 1)).
	(center + (0 @ 1)).
	(center + (1 @ 0)).
	(center + (-1 @ 0)).
	(center + (0 @ -1)).
	(center + (-1 @ -1)).
	(center + (-1 @ 1)).
	(center + (1 @ -1))}.
	surroundings := surroundings
		collect: [ :point | self adaptCoordinates: point ].
	^ surroundings
		detect: [ :point | (self agentIn: point) isNotNil ]
		ifFound: [ :point | self agentIn: point ]
		ifNone: [ "shuffle" nil ]