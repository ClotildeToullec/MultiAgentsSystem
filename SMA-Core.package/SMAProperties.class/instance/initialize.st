initialization
initialize
	super initialize.
	torus := false.
	gridSizeX := 100.
	gridSizeY := 100.
	boxSize := 10 @ 10.
	delay := 0.2 seconds.
	scheduling := #sequential.
	nbTicks := 0.
	grid := true.
	logTrace := false.
	seed := 0.
	refresh := 1