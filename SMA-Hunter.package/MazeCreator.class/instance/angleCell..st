adapting
angleCell: cell
	| neighbors |
	neighbors := cell fourNeighbors.	"Order: E,S,W,N"
	^ (((self pointInsideExtent: neighbors first)
		or: [ visitedCells includes: neighbors first ])
		and: [ (self pointInsideExtent: neighbors third)
				or: [ visitedCells includes: neighbors third ] ]) not
		and: [ ((self pointInsideExtent: neighbors second)
				or: [ visitedCells includes: neighbors second ])
				and: [ (self pointInsideExtent: neighbors fourth)
						or: [ visitedCells includes: neighbors fourth ] ] ]