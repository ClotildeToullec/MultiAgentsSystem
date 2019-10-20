accessing
pointInsideExtent: aPoint
	^ 1 @ 1 <= aPoint and: [ aPoint <= extent ]