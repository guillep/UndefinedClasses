tests
testUndefinedClassIsUndefined

	| undefinedClass |
	self assertClassDoesNotExist: #Foo.

	undefinedClass := UndefinedClass createUndefinedClassNamed: #Foo package: #Foo.
	self assert: undefinedClass isUndefinedSubclass