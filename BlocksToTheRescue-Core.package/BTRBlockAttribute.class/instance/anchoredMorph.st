accessing
anchoredMorph

	self blockModel ifNil: [^ nil].
	^ anchoredMorph ifNil: [anchoredMorph := self safeCreateViewForModel: self blockModel]