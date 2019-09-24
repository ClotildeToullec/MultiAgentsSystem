drawing
addAgent: agent at: aPosition
	| cell |
	cell := cells at: dimension x - aPosition x + 1 at: aPosition y.
	cell showAgent: agent