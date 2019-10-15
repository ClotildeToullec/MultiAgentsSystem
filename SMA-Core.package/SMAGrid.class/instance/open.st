instance creation
open
	| space |
	space := BlSpace new.
	space root addChild: gridElement.
	space
		addEventHandlerOn: BlKeystrokeEvent
		do: [ :e | self handleKeyStroke: e ].
	space addEventHandlerOn: BlSpaceClosedEvent do: [ sma stop ].
	space show