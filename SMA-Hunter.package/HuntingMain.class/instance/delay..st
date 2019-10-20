accessing
delay: anInteger
	scheduling
		delay: (0.01 seconds max: scheduling delay + (anInteger * 0.01) seconds)