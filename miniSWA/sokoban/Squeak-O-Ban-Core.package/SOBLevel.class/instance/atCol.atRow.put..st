accessing
atCol: colNumber atRow: rowNumber put: aTile

	self tiles 
		at: rowNumber
		at: colNumber
		put: aTile.
	aTile addDependent: self.