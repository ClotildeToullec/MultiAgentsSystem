action
bounce
	| newDestination bounced neighbor |
	neighbor := environment agentIn: self position + self direction.
	neighbor
		ifNotNil: [ neighbor isWinner
				ifTrue: [ self winGame ].
			neighbor isHunter
				ifTrue: [ self die ].
			neighbor isWall
				ifTrue: [ self direction: 0 @ 0 ].
			neighbor isDefender
				ifTrue: [ self beInvincible.
					neighbor die ] ].
	environment isToric
		ifTrue: [ ^ self ].
	newDestination := self position + self direction.
	bounced := newDestination x = 0
		or: [ newDestination x = (environment gridSizeX + 1)
				or: [ newDestination y = 0
						or: [ newDestination y = (environment gridSizeY + 1) ] ] ].
	bounced
		ifFalse: [ ^ self ].
	pasX := 0.
	pasY := 0