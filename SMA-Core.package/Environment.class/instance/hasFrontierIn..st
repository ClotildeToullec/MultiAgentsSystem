testing
hasFrontierIn: aPoint
	^ isToric not
		and: [ aPoint x = 0
				or: [ aPoint x = (gridSizeX + 1)
						or: [ aPoint y = 0 or: [ aPoint y = (gridSizeY + 1) ] ] ] ]