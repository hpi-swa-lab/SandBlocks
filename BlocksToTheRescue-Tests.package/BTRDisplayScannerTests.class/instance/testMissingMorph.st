testing
testMissingMorph

	self textAttribute blockModel: nil.
	self composeLine.
	self 
		shouldnt: [self scanner displayLine: self line offset: 0 @ 0 leftInRun: 0]
		raise: Exception.