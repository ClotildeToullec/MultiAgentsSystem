accessing
hunters
	^ hunters := hunters ifNil: (agents select: [ :agt | agt isHunter ])