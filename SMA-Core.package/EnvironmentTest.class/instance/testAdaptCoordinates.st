tests
testAdaptCoordinates
	| points |
	points := self frontierPoints.

	"Toric"
	environment isToric: false.
	self
		assert: (points collect: [ :point | environment adaptCoordinates: point ])
		equals: self unToricAdaptedFrontierPoints.

	"Not toric"
	environment isToric: true.
	self
		assert: (points collect: [ :point | environment adaptCoordinates: point ])
		equals: self toricAdaptedFrontierPoints