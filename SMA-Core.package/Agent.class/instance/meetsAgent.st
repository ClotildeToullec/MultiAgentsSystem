testing
meetsAgent
	^ environment
		agentIn: (environment adaptCoordinates: self position + self direction)