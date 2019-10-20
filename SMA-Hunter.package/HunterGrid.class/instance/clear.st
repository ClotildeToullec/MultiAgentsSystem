accessing
clear
	| agentsToRemove |
	agentsToRemove := agents keys.
	agentsToRemove
		do: [ :agt | 
			| elt |
			elt := agents at: agt.
			self removeAgent: agt element: elt ]