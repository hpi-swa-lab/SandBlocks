testing
circleCollided: aBOCollisionResult
	| own other |
	own := aBOCollisionResult ownCStrategy.
	other := aBOCollisionResult othersCStrategy.

	^ aBOCollisionResult
		collided: (own convexCollided: other);
		ownDataAt: #side put: (own collisionBounds sideNearestTo: other position) asSide;
		yourself