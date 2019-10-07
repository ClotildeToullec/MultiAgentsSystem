initialization
initialize: showBorder
	super initialize.
	self color: Color transparent.
	showBorder
		ifFalse: [ ^ self ].
	self
		borderColor: Color black;
		borderWidth: 1