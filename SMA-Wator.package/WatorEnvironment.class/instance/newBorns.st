accessing
newBorns
	^ newBorns := newBorns reject: [ :animal | animal isDead ]