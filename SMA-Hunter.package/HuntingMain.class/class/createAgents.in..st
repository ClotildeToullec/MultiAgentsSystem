instance creation
createAgents: properties in: anEnvironment
	| positions nbWalls walls avatar hunters |
	positions := Set new.
	nbWalls := properties wallsPercent / 100
		* (properties gridSizeX * properties gridSizeY).
	[ positions size == (nbWalls + properties nbHunters + 1) ]
		whileFalse: [ positions
				add:
					(1 to: properties gridSizeX) atRandom
						@ (1 to: properties gridSizeY) atRandom ].
	positions := positions asArray shuffle.
	avatar := Avatar newAt: positions first in: anEnvironment.
	hunters := (1 to: properties nbHunters)
		collect: [ :i | Hunter newAt: (positions at: i + 1) in: anEnvironment ].
	walls := (1 to: nbWalls)
		collect: [ :i | 
			Wall
				newAt: (positions at: i + 1 + properties nbHunters)
				in: anEnvironment ].
	^ {avatar.
	hunters.
	walls} flattened