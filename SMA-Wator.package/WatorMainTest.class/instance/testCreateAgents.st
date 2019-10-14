tests
testCreateAgents
	self
		assert:
			((main agents select: [ :animal | animal isShark ])
				noneSatisfy: [ :shark | shark isDead ]).
	main agents do: [ :animal | animal decide ].
	self
		assert:
			((main agents select: [ :animal | animal isShark ])
				noneSatisfy: [ :shark | shark isDead ])