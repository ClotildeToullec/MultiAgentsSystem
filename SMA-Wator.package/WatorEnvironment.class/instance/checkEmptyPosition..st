testing
checkEmptyPosition: aPosition
	(agents includesKey: aPosition x)
		ifTrue: [ (agents at: aPosition x)
				at: aPosition y
				ifPresent: [ Error signal: 'There is already something here: ' ] ]