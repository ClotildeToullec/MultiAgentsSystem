keyboardEvents
handleKeyStroke: keyStrokeEvent
	keyStrokeDictionary
		at: keyStrokeEvent char
		ifPresent: [ :bloc | bloc value ]
		ifAbsent: [  ]