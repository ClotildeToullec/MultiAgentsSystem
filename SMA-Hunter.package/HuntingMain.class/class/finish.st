stopping
finish
	self
		allInstancesDo: [ :sma | 
			sma finish.
			sma stop ]