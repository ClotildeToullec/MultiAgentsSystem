accessing
move
	| newDestination |
	self bounce.
	newDestination := self position + self direction.
	self moveTo: newDestination