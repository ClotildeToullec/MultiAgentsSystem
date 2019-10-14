tests
testIncludeNewBorns
	| newBorns |
	environment agents: Dictionary new.
	environment newFishAt: 1 @ 1.
	environment newFishAt: 2 @ 2.
	environment newFishAt: 3 @ 3.
	environment newFishAt: 4 @ 4.
	newBorns := environment newBorns.
	newBorns do: [ :animal | animal die ].
	environment includeNewBorns.
	self
		assert:
			((environment agents asOrderedCollection
				reject: [ :animal | animal isNil ])
				noneSatisfy: [ :animal | animal isDead ])