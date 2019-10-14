drawing
buildGrid
	1 to: dimension y do: [ :y | 
		| row |
		row := Morph new
			layoutBounds: (0 @ 0 corner: sma properties boxSize);
			layoutPolicy: RowLayout new;
			color: Color transparent.
		1 to: dimension x do: [ :x | 
			| cell |
			cell := self newCell.
			row addMorph: cell.
			cells at: "dimension x  + 1 -" x at: y put: cell ].
		container addMorph: row ]