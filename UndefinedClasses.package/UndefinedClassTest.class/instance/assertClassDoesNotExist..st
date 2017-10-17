tests
assertClassDoesNotExist: aSymbol
	self assert: (self class environment at: aSymbol ifAbsent: [ true ])