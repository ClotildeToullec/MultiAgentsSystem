agents
updateAppearanceOf: element from: anAgent
	element
		background:
			(anAgent isShark
				ifTrue: [ Color red ]
				ifFalse: [ Color green ])