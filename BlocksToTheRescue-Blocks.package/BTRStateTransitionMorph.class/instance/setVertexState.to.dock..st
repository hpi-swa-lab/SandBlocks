event handling
setVertexState: vertexIndex to: aBTRState dock: aSymbol

	vertexIndex = 1 ifTrue: [
		self startState: aBTRState.
		self startDock: aSymbol].
	vertexIndex = self vertices size ifTrue: [
		self endState: aBTRState.
		self endDock: aSymbol].
	self stateMachineMorph transitionMorphsDict at: self transition put: self.
	self changed: #viewData.