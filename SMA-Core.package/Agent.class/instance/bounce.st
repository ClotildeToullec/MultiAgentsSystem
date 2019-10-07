action
bounce
	self flag: 'Tenir compte de l''axe touché'.
	self
		pasX: pasX negated;
		pasY: pasY negated.
	self bump