running
setUp
	"Hooks that subclasses may override to define the fixture of test."

	super setUp.
	environment := Environment new
		gridSizeX: 30;
		gridSizeY: 30;
		isToric: false;
		agents: (Array2D rows: 30 columns: 30);
		yourself.
	self resetAgents