instance creation
createAgents: smaProperties in: anEnvironment
	| positions fishes sharks |
	positions := Set new.
	[ positions size == (smaProperties nbFishes + smaProperties nbSharks) ]
		whileFalse: [ positions
				add:
					(1 to: smaProperties gridSizeX) atRandom
						@ (1 to: smaProperties gridSizeY) atRandom ].
	positions := positions asArray shuffle.
	fishes := (1 to: smaProperties nbFishes)
		collect: [ :i | 
			(Fish new: smaProperties in: anEnvironment)
				position: (positions at: i) ].
	sharks := (1 to: smaProperties nbSharks)
		collect: [ :i | 
			(Shark new: smaProperties in: anEnvironment)
				position: (positions at: i + smaProperties nbFishes) ].
	^ fishes , sharks