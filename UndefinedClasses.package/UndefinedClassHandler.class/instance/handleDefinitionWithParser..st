handle
handleDefinitionWithParser: aParser
	
	| newClass |
	self class environment at: aParser className ifPresent: [ :class | ^ class ].

	UndefinedClass createUndefinedClassNamed: aParser superClassName package: aParser packageName.
	newClass := Smalltalk compilerClass evaluate: aParser originalString.
	^ newClass