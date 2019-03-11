*BlocksToTheRescue
readBlock
	
	| startOfToken initalPosition |
	self haltOnce.
	startOfToken := mark.
	initalPosition := source instVarNamed: 'initialPositionOrNil'. 
	(initalPosition isNil or: [initalPosition = 1])
		ifTrue: ["startOfToken := startOfToken - 1"]
		ifFalse: [startOfToken := startOfToken - initalPosition + 1].
	 ^ ((source contents asText attributesAt: startOfToken) detect: [:each | each anchoredMorph notNil] ifNone: [self haltOnce. ^ nil]) anchoredMorph value .