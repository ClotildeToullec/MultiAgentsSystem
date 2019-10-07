printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< ' Position: ';
		<< self position asString;
		<< '. Direction: ';
		<< self direction asString