tests
testClassWithUndefinedSuperclassNameHasUndefinedSuperclass

	| class |
	self assertClassDoesNotExist: #Foo. 
	
	class := self createClassFromDefinitionString: self undefinedDefinition.
	
	self assert: class superclass isUndefined