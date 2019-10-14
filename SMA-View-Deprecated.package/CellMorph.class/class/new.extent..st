instance creation
new: showBorder extent: anExtent
	^ self basicNew
		initialize: showBorder;
		extent: anExtent;
		yourself