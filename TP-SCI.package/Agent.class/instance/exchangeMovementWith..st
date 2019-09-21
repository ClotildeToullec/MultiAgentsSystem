action
exchangeMovementWith: neighbor
	| neighborDirection |
	neighborDirection := neighbor direction.
	neighbor
		pasX: self pasX;
		pasY: self pasY;
		bump.
	self
		pasX: neighborDirection x;
		pasY: neighborDirection y;
		bump