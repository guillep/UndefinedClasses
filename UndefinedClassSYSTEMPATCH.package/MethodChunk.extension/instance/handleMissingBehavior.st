*UndefinedClassSYSTEMPATCH
handleMissingBehavior
	"self error: ('Cannot install method in unexistent behavior {1}' format: {(behaviorName asString)})"
	
	| package |
	package := (categoryName beginsWith: '*')
		ifTrue: [ categoryName allButFirst ]
		ifFalse: [ categoryName ].
	
	UndefinedClass createUndefinedClassNamed: behaviorName asString package: package.
"	(MissingClassError 
		className: behaviorName asString)
		signal: 'Cannot install method in non-existent behavior ', behaviorName asString"