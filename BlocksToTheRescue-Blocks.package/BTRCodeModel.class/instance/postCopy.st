copying
postCopy
	
	"Should be implemented by users if they have to copy specific values."
	^ super postCopy
		breakDependents;
		code: self code copy;
		viewData: self viewData copy;
		yourself