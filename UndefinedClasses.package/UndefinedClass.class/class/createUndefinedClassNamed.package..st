building
createUndefinedClassNamed: aString package: aPackageName
	
	^ self
		subclass: aString
		instanceVariableNames: ''
		classVariableNames: ''
		package: aPackageName