*IconsForMessages
iconSymbolForMethod: aMethodReference
	"Answer an icon symbol to be shown for the given method reference."
	
	aMethodReference isValid ifFalse: [^ #brokenMorph].
	
	^ self
		selectIconUsing: #(
			strategyPragmaMessageIconSymbol:
			strategyPragmaMessageIconAt:
			strategyToolIconSelector:
			strategyMethodFeatures:
			strategyMethodHierarchy:
			strategyMethodPrimitive:)
		with: aMethodReference
		ifNotFound: [#blank]