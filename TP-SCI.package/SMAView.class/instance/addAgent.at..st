drawing
addAgent: agent at: aPosition
	| cell |
	cell := cells
		at: sma environment gridSizeX - aPosition x + 1
		at: aPosition y.
	cell showAgent: agent