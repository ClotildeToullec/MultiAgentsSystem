tests
testAgents
	| sma |
	sma := ParticleMain fromDefaultProperties.
	environment := sma environment.
	sma agents
		do: [ :agent | 
			self
				assert: (environment agents at: agent x at: agent y)
				equals: agent ].
	self
		assert: (environment agents asArray reject: [ :element | element isNil ]) size
		equals: sma agents size.
	5
		timesRepeat: [ sma agents do: [ :agent | agent decide ].
			sma agents
				do: [ :agent | 
					self
						assert: (environment agents at: agent x at: agent y)
						equals: agent ].
			self
				assert: (environment agents asArray reject: [ :element | element isNil ]) size
				equals: sma agents size ]