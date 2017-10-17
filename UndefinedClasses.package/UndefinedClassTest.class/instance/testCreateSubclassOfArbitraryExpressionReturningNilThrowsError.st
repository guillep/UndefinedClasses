tests
testCreateSubclassOfArbitraryExpressionReturningNilThrowsError

	self assertClassDoesNotExist: #ColoredFoo.

	self should: [
		self createClassFromDefinitionString: '(Array new: 1) first subclass: #Box2
			instanceVariableNames: ''''
			classVariableNames:''''
			package: ''Box'''. 
	] raise: Error.
	
	self assertClassDoesNotExist: #ColoredFoo.