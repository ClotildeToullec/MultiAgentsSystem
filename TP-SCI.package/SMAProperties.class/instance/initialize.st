initialization
initialize
	super initialize.
	torus := false.
	gridSizeX := 100.
	gridSizeY := 100.
	canvasSizeX := 600.
	canvasSizeY := 600.
	boxSize := 6 @ 6.
	delay := 0.5 seconds.
	scheduling := #sequential.
	nbTicks := 500.
	grid := true.
	logTrace := false.
	seed := 0.
	refresh := 1.
	nbParticles := 1000