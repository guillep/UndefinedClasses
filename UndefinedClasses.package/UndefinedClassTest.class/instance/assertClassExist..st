tests
assertClassExist: aSymbol
	self assert: (self class environment at: aSymbol ifPresent: [ true ])