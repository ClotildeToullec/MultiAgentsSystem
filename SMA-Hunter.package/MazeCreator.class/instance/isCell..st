extending
isCell: aCellPoint
	^ aCellPoint x % 2 ~= 0 and: [ aCellPoint y % 2 ~= 0 ]