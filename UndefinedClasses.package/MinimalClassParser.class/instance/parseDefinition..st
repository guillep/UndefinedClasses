parsing
parseDefinition: aString
	| tokens |
	originalString := aString.
	tokens := (Parser new scanTokens: aString).
	className := tokens third.
	superClassName := tokens first.
	packageName := tokens last.