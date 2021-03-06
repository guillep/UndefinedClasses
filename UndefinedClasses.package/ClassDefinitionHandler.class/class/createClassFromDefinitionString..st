compiling
createClassFromDefinitionString: aString

	"Parse the definition string.
	Check that the superclass, the traits, the pool dictionaries and the package required exist.
	If they do not exist, we create them, or we create an *undefined* version for them"
	
	| classDefinition newClass |
	classDefinition := CDClassParser parse: aString.
	
	newClass := (self existsClassNamed: classDefinition superclassName)
		ifTrue: [ Smalltalk compiler evaluate: aString ] 
		ifFalse: [ UndefinedClassHandler new handleDefinitionString: aString ].
	
	^ newClass