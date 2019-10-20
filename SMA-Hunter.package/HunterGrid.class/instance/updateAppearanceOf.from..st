agents
updateAppearanceOf: element from: anAgent
	anAgent isAvatar
		ifTrue: [ element
				background:
					(anAgent isInvincible
						ifFalse: [ Color yellow ]
						ifTrue: [ Color lightOrange ]) ]