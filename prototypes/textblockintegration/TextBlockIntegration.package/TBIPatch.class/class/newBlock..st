instance creation
newBlock: aMorph

	^ self new
		morph: Morph new;
		type: #block;
		yourself