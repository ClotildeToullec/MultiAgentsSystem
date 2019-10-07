drawing
addAgent: agent at: aPosition
	| cell |
	cell := cells at: "dimension x + 1 - "aPosition x at: aPosition y.
	cell showAgent: agent