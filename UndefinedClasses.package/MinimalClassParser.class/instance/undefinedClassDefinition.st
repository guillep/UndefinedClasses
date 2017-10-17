accessing
undefinedClassDefinition

	| endPart newDefinition |
	endPart := (originalString copyAfter: Character space).
	newDefinition := UndefinedClass name, ' ', endPart.
	^ newDefinition