action
exchangeMovementWith: neighbor
	super exchangeMovementWith: neighbor.
	self bump.
	neighbor bump