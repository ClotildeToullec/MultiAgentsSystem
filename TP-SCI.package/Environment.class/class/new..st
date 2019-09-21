instance creation
new: smaProperties
	^ self new
		gridSizeX: smaProperties gridSizeX;
		gridSizeY: smaProperties gridSizeY;
		isToric: smaProperties torus;
		yourself