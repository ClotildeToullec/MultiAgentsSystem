running
initializeView
	blView := WatorGrid model: self.
	agents do: [ :agent | blView addAgent: agent ].
	self assert: blView agents size = agents size description: 'Mauvaise initialisation des agents'.
	blView open