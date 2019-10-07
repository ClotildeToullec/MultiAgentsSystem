instance creation
createAgents: smaProperties in: anEnvironment
	| positions |
	positions := Set new.
	[ positions size == smaProperties nbParticles ]
		whileFalse: [ positions
				add:
					(1 to: smaProperties gridSizeX) atRandom
						@ (1 to: smaProperties gridSizeY) atRandom ].
	positions := positions asArray.
	^ (1 to: smaProperties nbParticles)
		collect: [ :i | Particle newAt: (positions at: i) in: anEnvironment ]