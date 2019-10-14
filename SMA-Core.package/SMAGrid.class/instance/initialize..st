initialization
initialize: aSMA
	self initialize.
	sma := aSMA.
	agents := Dictionary new.
	self createGrid.
	self createGridElement.
	sma properties grid
		ifTrue: [ self createGridLines ]