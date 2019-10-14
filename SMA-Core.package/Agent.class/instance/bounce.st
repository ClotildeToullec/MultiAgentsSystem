action
bounce
	| newDestination bouncedX bouncedY |
	environment isToric
		ifTrue: [ ^ false ].
	newDestination := self position + self direction.
	bouncedX := newDestination x = 0
		or: [ newDestination x = (environment gridSizeX + 1) ].
	bouncedY := newDestination y = 0
		or: [ newDestination y = (environment gridSizeY + 1) ].
	bouncedX
		ifTrue: [ pasX := pasX negated ].
	bouncedY
		ifTrue: [ pasY := pasY negated ]