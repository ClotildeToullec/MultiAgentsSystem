instance creation
newScheduling: properties
	properties scheduling = #sequential
		ifTrue: [ ^ SequentialScheduling new delay: properties delay ].
	properties scheduling = #equitable
		ifTrue: [ ^ EquitableScheduling new delay: properties delay ].
	properties scheduling = #random
		ifTrue: [ ^ RandomScheduling new delay: properties delay ]