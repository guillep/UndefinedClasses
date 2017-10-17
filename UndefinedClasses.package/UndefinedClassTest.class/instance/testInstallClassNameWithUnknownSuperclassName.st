tests
testInstallClassNameWithUnknownSuperclassName

	self assertClassDoesNotExist: #Foo. 
	
	self createClassFromDefinitionString: self undefinedDefinition.
	
	self assertClassExist: #ColoredFoo.
	self assert: (self class environment at: #ColoredFoo) superclass equals: (self class environment at: #Foo).
	self assert: (self class environment at: #Foo) isUndefined.