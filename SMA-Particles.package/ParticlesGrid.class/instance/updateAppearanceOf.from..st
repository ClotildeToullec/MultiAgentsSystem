agents
updateAppearanceOf: element from: anAgent
	element
		background:
			(anAgent hasBumped
				ifTrue: [ Color red ]
				ifFalse: [ Color gray ])