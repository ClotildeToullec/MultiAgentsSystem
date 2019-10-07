instance creation
new: smaProperties
	^ self new
		gridSizeX: smaProperties gridSizeX;
		gridSizeY: smaProperties gridSizeY;
		isToric: smaProperties torus;
		agents:
			(Array2D
				rows: smaProperties gridSizeX
				columns: smaProperties gridSizeY);
		yourself