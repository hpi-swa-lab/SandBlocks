accessing
addTransition: aBTRStateTransition of: aBTRState

	^ (self transitionMorphsDict
			at: aBTRState -> aBTRStateTransition
			put: (BTRStateTransitionMorph
				for: aBTRState -> aBTRStateTransition
				on: self))
		startDock: #bottom;
		endDock: #bottom;
		updateVertices;
		yourself