initialization
initialize
	super initialize.
	torus := false.
	gridSizeX := 50.
	gridSizeY := 50.
	boxSize := 15 @ 15.
	grid := false.
	delay := 0.01 seconds.
	wallsPercent := 40.
	nbHunters := 1.
	speedHunter := 5.
	speedAvatar := 1.
	defenderLife := 50.	"(gridSizeX * gridSizeX + (gridSizeY * gridSizeY))
		sqrtFloor"	" * facteur dépendant de waaPercent"
	invincibleLength := 10