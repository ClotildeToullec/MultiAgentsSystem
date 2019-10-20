agents
colorOf: anAgent
	anAgent isWall
		ifTrue: [ ^ Color gray ].
	anAgent isAvatar
		ifTrue: [ ^ Color yellow ].
	anAgent isHunter
		ifTrue: [ ^ Color red ].
	anAgent isDefender
		ifTrue: [ ^ Color green ].
	anAgent isWinner
		ifTrue: [ ^ Color blue ]