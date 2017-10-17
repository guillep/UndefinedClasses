tests
testArbitraryExpressionStringReturnsProgramNodeThatIsNotMethodNode

	| astNode |
	astNode := CodeParser parse: '1 + ( self foo: #( asd gdf 434 4.0 ))'.
		
	self assert: astNode isMessage