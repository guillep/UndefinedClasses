accessing
seasideTestCases
	|testClasses|

	testClasses := OrderedCollection new.
	self packagesNames do: [ :packageName |
		|classes|
 		classes := (RPackage organizer packageNamed: packageName) definedClasses collect: [  :c | c  ].
		testClasses addAll: ( classes select: [ : c | (c name beginsWith: 'WA' ) and: [  (c  inheritsFrom: TestCase) and: [ c isAbstract not ] ] ]) 
	].

	^ testClasses