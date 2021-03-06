testing
testDoIt

	| pluggableTextMorph morph newExtent |
	pluggableTextMorph := PluggableTextMorphPlus new.
	pluggableTextMorph setSelection: {0 . 0}.
	morph := Morph new.
	newExtent := self newMorphExtent.

	Compiler new
		evaluate: 
			(BTRBlockAttribute asTextFrom: (BTRConstantModel for: morph)),
			(Text withAll: ' extent: ', newExtent).

	self assert: newExtent equals: morph extent.
