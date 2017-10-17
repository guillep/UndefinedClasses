tests
testCreateUndefinedClassShouldCreateNewClassThatIsIndefined

	self assertClassDoesNotExist: #Foo.

	UndefinedClass createUndefinedClassNamed: #Foo package: #Foo.
	
	self assertClassExist: #Foo.