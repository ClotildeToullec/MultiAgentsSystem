instance creation
newAgentElement: anAgent
	^ anAgent isShark
		ifTrue: [ self newSharkElement: anAgent ]
		ifFalse: [ self newFishElement: anAgent ]