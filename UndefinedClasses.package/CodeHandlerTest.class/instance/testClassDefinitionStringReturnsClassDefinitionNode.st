tests
testClassDefinitionStringReturnsClassDefinitionNode

	| astNode |
	astNode := CodeParser parse: 'Box subclass: #Box2
		instanceVariableNames: ''''
		classVariableNames:''''
		package: ''Box'''.
		
	self assert: astNode isClassDefinition