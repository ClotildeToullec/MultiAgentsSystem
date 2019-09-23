drawing
buildGrid
	1 to: dimension y do: [ :y | 
		| row |
		row := Morph new
			layoutBounds: (0 @ 0 corner: agentSize);
			layoutPolicy: RowLayout new;
			color: Color transparent.
		1 to: dimension x do: [ :x | 
			| cell |
			cell := EmptyCell new extent: agentSize.
			row addMorph: cell.
			cells at: dimension x - x + 1 at: y put: cell ].
		container addMorph: row ]