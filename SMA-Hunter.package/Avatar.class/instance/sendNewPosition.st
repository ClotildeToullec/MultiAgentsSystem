action
sendNewPosition
	| frontier distance |
	frontier := OrderedCollection new.
	distance := Dictionary new.
	frontier add: self position.
	distance at: self position put: 0.
	[ frontier isEmpty ]
		whileFalse: [ | current |
			current := frontier removeFirst.
			(environment freeCellsAround: current)
				do: [ :neighbor | 
					(distance includesKey: neighbor)
						ifFalse: [ frontier add: neighbor.
							distance
								at: neighbor
								put: (self setDistance: current ofCell: distance) ] ] ].
	environment distancesToAvatar: distance.
	^ distance