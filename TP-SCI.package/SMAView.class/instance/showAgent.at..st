updating
showAgent: agent at: aPosition
	(cells at: dimension x + 1 - aPosition x at: aPosition y)
		showAgent: agent