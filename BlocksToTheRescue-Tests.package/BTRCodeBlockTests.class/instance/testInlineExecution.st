as yet unclassified
testInlineExecution

	| x |
	x := 42.
	self assert: x * x equals: #V2;BTRCodeModel;210;Code1;self referenceDictionary at: 1 put: (BTRCodeModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: ''; instVarAt: 3 put: nil; instVarAt: 4 put: #source; instVarAt: 5 put: nil; instVarAt: 6 put: (self referenceAt: 2); instVarAt: 7 put: (self referenceAt: 4); yourself). 
self referenceDictionary at: 2 put: (Text string: 'x * x' runs: (self referenceAt: 3)). 
self referenceDictionary at: 3 put: (RunArray runs: #(5) values: #(#())). 
self referenceDictionary at: 4 put: ((Dictionary new)). 
self referenceDictionary at: 1;.