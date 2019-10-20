instance creation
createAgents: properties in: anEnvironment
	| mazeCreator freeCells walls avatar hunters |
	mazeCreator := MazeCreator
		new: properties gridSizeX @ properties gridSizeY.
	mazeCreator
		buildMaze;
		adaptToWallPercent: properties wallsPercent.
	walls := mazeCreator walls
		collect: [ :point | Wall newAt: point in: anEnvironment ].
	freeCells := mazeCreator visitedCells.
	properties nbHunters + 2 > freeCells size
		ifTrue: [ UIManager default
				alert: 'Too much walls, no more room for players !'.
			^ walls ].
	avatar := (Avatar
		newAt: (freeCells remove: freeCells atRandom)
		in: anEnvironment)
		direction: 0 @ 0;
		speed: properties speedAvatar;
		invincibleLength: properties invincibleLength.
	hunters := (1 to: properties nbHunters)
		collect: [ :i | 
			(Hunter
				newAt: (freeCells remove: freeCells atRandom)
				in: anEnvironment) speed: properties speedHunter ].
	^ {avatar.
	hunters.
	walls} flattened