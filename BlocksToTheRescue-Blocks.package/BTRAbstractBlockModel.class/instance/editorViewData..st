accessing
editorViewData: aDictionary
	
	"Default to inlineViewData as the most model-view combinations probably do not want to have seperate stores for inline and editor data."
	self inlineViewData: aDictionary.
	
	"editorViewData := aDictionary "
	