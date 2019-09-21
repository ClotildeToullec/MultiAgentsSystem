helpers
randomNonfrontierPoints
	| points |
	points := Array new: 8.	"Arbitrary size"
	points := (1 to: 8)
		collect: [ :i | points at: i put: (1 to: 30) atRandom @ (1 to: 30) atRandom ].
	^ points