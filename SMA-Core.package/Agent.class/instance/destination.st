accessing
destination
	^ destination
		ifNil: [ destination := self position + self direction ]