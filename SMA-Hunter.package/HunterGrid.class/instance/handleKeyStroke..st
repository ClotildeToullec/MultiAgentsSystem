keyboardEvents
handleKeyStroke: keyStrokeEvent
	"Consistency bof"

	keyStrokeEvent char = Character arrowUp
		ifTrue: [ sma avatarX: -1 ].
	keyStrokeEvent char = Character arrowDown
		ifTrue: [ sma avatarX: 1 ].
	keyStrokeEvent char = Character arrowRight
		ifTrue: [ sma avatarY: 1 ].
	keyStrokeEvent char = Character arrowLeft
		ifTrue: [ sma avatarY: -1 ]