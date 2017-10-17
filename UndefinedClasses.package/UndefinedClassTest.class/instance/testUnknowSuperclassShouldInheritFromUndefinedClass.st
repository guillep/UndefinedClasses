handler tests
testUnknowSuperclassShouldInheritFromUndefinedClass
	| newUndefinedClass |
	self assertClassDoesNotExist: #Foo.
	
	UndefinedClassHandler new
		handleDefinitionString: self undefinedDefinition.
	self assertClassExist: #ColoredFoo.
	newUndefinedClass := (self class environment at: #ColoredFoo). 
	self assert: newUndefinedClass superclass equals: (self class environment at: #Foo).
	self assert: (self class environment at: #Foo) isUndefined