action
decide
	tick := tick + 1.
	isInvincible
		ifTrue: [ invincibleSince := invincibleSince + 1.
			invincibleSince = invincibleLength
				ifTrue: [ self beVincible ] ].
	tick % speed = 0
		ifFalse: [ self sendNewPosition.
			^ self ].
	self move.
	self sendNewPosition.
	"self checkNewPosition"