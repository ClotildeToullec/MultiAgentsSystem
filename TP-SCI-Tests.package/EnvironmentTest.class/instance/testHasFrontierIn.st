tests
testHasFrontierIn

	"Toric"
	environment isToric: true.
	self
		assertCollection:
			(self frontierPoints
				collect: [ :point | environment hasFrontierIn: point ])
		equals: (Array new: 8 withAll: false).
	self
		assertCollection:
			(self randomNonfrontierPoints
				collect: [ :point | environment hasFrontierIn: point ])
		equals: (Array new: 8 withAll: false).

	"Not toric"
	environment isToric: false.
	self
		assertCollection:
			(self frontierPoints
				collect: [ :point | environment hasFrontierIn: point ])
		equals: (Array new: 8 withAll: true).
	self
		assertCollection:
			(self randomNonfrontierPoints
				collect: [ :point | environment hasFrontierIn: point ])
		equals: (Array new: 8 withAll: false)