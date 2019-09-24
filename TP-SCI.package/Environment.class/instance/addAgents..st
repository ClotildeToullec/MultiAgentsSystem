accessing
addAgents: someAgents
	someAgents do: [ :agt | agents at: agt x at: agt y put: agt ]