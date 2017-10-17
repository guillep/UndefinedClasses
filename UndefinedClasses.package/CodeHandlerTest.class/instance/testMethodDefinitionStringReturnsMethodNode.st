tests
testMethodDefinitionStringReturnsMethodNode

	| astNode |
	astNode := CodeParser parse: 'm1
	^ self foo'.
		
	self assert: astNode isMethod