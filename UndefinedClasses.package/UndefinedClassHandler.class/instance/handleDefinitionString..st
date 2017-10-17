handle
handleDefinitionString: aString
	
	^ self handleDefinitionWithParser: (MinimalClassParser new parseDefinition: aString)