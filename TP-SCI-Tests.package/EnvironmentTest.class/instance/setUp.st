running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	super setUp.
	environment := Environment new
		gridSizeX: 30;
		gridSizeY: 30;
		isToric: false;
		yourself