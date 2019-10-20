initialization
createKeyStrokeDictionary
	keyStrokeDictionary := Dictionary new.
	keyStrokeDictionary
		at: Character arrowUp
		put: [ sma avatarX: -1.
			sma avatarY: 0 ].
	keyStrokeDictionary
		at: Character arrowDown
		put: [ sma avatarX: 1.
			sma avatarY: 0 ].
	keyStrokeDictionary
		at: Character arrowRight
		put: [ sma avatarY: 1.
			sma avatarX: 0 ].
	keyStrokeDictionary
		at: Character arrowLeft
		put: [ sma avatarY: -1.
			sma avatarX: 0 ].
	keyStrokeDictionary at: $a put: [ sma speedHunter: -1 ].
	keyStrokeDictionary at: $z put: [ sma speedHunter: 1 ].
	keyStrokeDictionary at: $o put: [ sma speedAvatar: -1 ].
	keyStrokeDictionary at: $p put: [ sma speedAvatar: 1 ].
	keyStrokeDictionary at: $w put: [ sma delay: -1 ].
	keyStrokeDictionary at: $x put: [ sma delay: 1 ].
	keyStrokeDictionary at: Character space put: [ sma toggleRunning ].
	keyStrokeDictionary at: $i put: [ sma inspect ]