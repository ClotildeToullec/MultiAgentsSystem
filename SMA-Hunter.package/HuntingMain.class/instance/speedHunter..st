accessing
speedHunter: anInteger
	self hunters
		do: [ :hunter | hunter speed: (1 max: hunter speed + anInteger) ]