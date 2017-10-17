tests
testLoadingSeasidePackagesInRandomOrder
	
	| maxNumerOfUndefinedClassesCreated |
	
	self assert:  UndefinedClass allSubclasses isEmpty.

	maxNumerOfUndefinedClassesCreated :=  self loadSeasidePackagesInRandomOrder.
	self assert: maxNumerOfUndefinedClassesCreated > 0.
	Transcript cr; show: 'maxNumerOfUndefinedClassesCreated = ', maxNumerOfUndefinedClassesCreated asString.
	self assert:  UndefinedClass allSubclasses isEmpty.
	
	self flag: 'how to check that no code (method, ...) has been lost by comparing to regular Seaside loading'.
		
	self executeInitializeClassMethodsInCorrectOrder.
	
	self assertAllSeasideTests.
	