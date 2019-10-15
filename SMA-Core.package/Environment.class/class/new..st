instance creation
new: smaProperties
	^ self new
		gridSizeX: smaProperties gridSizeX;
		gridSizeY: smaProperties gridSizeY;
		isToric: smaProperties torus;
		agents:
			(Dictionary
				newFromKeys: (Array new: smaProperties gridSizeX)
				andValues: ((1 to: smaProperties gridSizeX) collect: [ :i | Dictionary new ]));
		yourself