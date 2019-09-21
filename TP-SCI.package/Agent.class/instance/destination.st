accessing
destination
	^ destination ifNil: [ destination := self newDestination ]