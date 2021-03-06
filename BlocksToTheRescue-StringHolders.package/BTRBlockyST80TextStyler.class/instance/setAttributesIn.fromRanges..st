styling
setAttributesIn: aText fromRanges: ranges

	| defaultAttributes newRuns newValues lastAttributes oldRuns nextIndex lastCount | 		
	oldRuns := aText runs.
	defaultAttributes := self defaultAttributes.
	newRuns := OrderedCollection new: ranges size * 2 + 1.
	newValues := OrderedCollection new: ranges size * 2 + 1.
	lastAttributes := nil.
	nextIndex := 1.
	lastCount := 0.
	ranges do: [ :range |
		| attributes |
		nextIndex < range start ifTrue: [ 
			lastAttributes == defaultAttributes 
				ifTrue: [
					lastCount := lastCount + range start - nextIndex.
					newRuns at: newRuns size put: lastCount ]
				ifFalse: [
					lastCount := range start - nextIndex.
					newRuns addLast: lastCount. 
					lastAttributes := defaultAttributes.
					newValues addLast: lastAttributes ].
			nextIndex := range start ].
		attributes := (self attributesFor: range type) ifNil: [ defaultAttributes ].
		(range type = #globalVar)
			ifTrue: [ "| oldAttributes |
				oldAttributes := aText attributesAt: range start.
				(oldAttributes isEmpty or: [oldAttributes
					noneSatisfy: [ :attribute | attribute isKindOf: BTRSimpleClassLink ]])
					ifTrue: [" | className |
						className := aText string copyFrom: range start to: range end.
						Smalltalk at: className asSymbol
							ifPresent: [ :class | class isBehavior ifTrue: [
								"attributes := attributes copyWith: (BTRBlockAttribute new anchoredBlock: ToolIcons flag asMorph)."
								attributes := attributes copyWith: (BTRSimpleClassLink new anchoredClass: class)]]].
		lastAttributes == attributes
			ifTrue: [ 
				lastCount := lastCount + range end - nextIndex + 1.
				newRuns at: newRuns size put: lastCount ]
			ifFalse: [
				lastCount := range end - nextIndex + 1.
				newRuns addLast: lastCount.
				lastAttributes := attributes.
				newValues addLast: lastAttributes ].
		nextIndex := range end + 1 ].
	nextIndex <= aText size ifTrue: [
		lastAttributes == defaultAttributes 
				ifTrue: [
					lastCount := lastCount + aText size - nextIndex + 1.
					newRuns at: newRuns size put: lastCount ]
				ifFalse: [
					lastCount := aText size - nextIndex + 1.
					newRuns addLast: lastCount.
					lastAttributes := defaultAttributes.
					newValues addLast: lastAttributes ] ].

	self replaceRuns: newRuns values: newValues on: aText.
	self transferPreservedAttributes: oldRuns on: aText.
	