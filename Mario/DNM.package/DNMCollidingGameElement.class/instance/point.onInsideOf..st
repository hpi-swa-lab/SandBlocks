collision
point: aPoint onInsideOf: aSide
	^(aSide sideOfPoint: (aPoint)) = (aSide sideOfPoint: (self center))