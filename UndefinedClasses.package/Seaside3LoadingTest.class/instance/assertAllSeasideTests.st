asserting
assertAllSeasideTests
	"self new assertAllSeasideTests"
	| suite results |
	suite := TestSuite new.
	self seasideTestCases do: [ :t | t  addToSuiteFromSelectors: suite ].
	results := suite run.
	self assert: results hasPassed