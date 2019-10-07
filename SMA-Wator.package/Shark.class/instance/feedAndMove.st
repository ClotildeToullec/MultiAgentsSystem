eating
feedAndMove
	| fish |
	fish := environment fishAround: self.
	fish ifNil: [ ^ self ].
	self eatFish: fish.
	self moveTo: fish position