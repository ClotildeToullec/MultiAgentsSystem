testing
pointsAround: center
	| surroundings |
	surroundings := {(center + (1 @ 1)).
	(center + (0 @ 1)).
	(center + (1 @ 0)).
	(center + (-1 @ 0)).
	(center + (0 @ -1)).
	(center + (-1 @ -1)).
	(center + (-1 @ 1)).
	(center + (1 @ -1))}.
	^ surroundings collect: [ :point | self adaptCoordinates: point ]