accessing
avatar
	^ avatar := avatar ifNil: [ self resetAvatar ]