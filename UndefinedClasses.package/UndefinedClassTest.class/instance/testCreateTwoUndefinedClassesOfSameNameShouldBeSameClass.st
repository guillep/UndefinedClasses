tests
testCreateTwoUndefinedClassesOfSameNameShouldBeSameClass

	| foo foo2 |
	self assertClassDoesNotExist: #Foo.

	foo := UndefinedClass createUndefinedClassNamed: #Foo package: #Foo.
	foo2 := UndefinedClass createUndefinedClassNamed: #Foo package: #Foo.
	
	self assert: foo == foo2