running
run
	"shuffle les agents"

	agents shuffle.
	"agents shuffleBy: Random seed: parameters seed."

	"appelle decide sur tous les agents"
	agents do: [ :agent | agent decide ]