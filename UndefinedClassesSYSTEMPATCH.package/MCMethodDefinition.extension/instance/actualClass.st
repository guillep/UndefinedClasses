*UndefinedClassesSYSTEMPATCH
actualClass

	 Smalltalk globals
		at: className
		ifAbsent: [
			UndefinedClass
				createUndefinedClassNamed: className package: category ].

	^ Smalltalk globals
		at: className
		ifPresent: [ :class | 
			classIsMeta
				ifTrue: [ class classSide ]
				ifFalse: [ class ] ]