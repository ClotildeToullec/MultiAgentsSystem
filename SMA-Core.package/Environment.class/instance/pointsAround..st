testing
pointsAround: center
	^ (center eightNeighbors
		collect: [ :point | self adaptCoordinates: point ]) asSet