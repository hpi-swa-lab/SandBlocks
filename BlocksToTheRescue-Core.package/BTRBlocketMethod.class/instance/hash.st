comparing
hash

	^ self blockModel hash bitXor: (self selector hash bitXor: self methodClass hash)