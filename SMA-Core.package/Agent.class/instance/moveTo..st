action
moveTo: aDestination
	| newPosition |
	newPosition := environment adaptCoordinates: aDestination.
	environment moveAgent: self to: newPosition.
	self position: newPosition