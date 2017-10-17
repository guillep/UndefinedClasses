*UndefinedClassSYSTEMPATCH
importFor: requestor
	
	| ast |
	(contents beginsWith: '----') ifTrue: [ ^self ].
	
	self flag: #fixme. "Ugly hack to parse preamble and postcript as a do it."
	((contents beginsWith: '"Change Set:') and: [ ChangeSet current preambleString isNil ])
		ifTrue: [ ChangeSet current preambleString: contents ].
	((contents beginsWith: '"Postscript:') and: [ ChangeSet current postscriptString isNil ])
		ifTrue: [ ChangeSet current postscriptString: contents ].

	ast := CodeParser parse: contents.

	(ast isClassDefinition and: [ 
		(Smalltalk globals includes: ast superclassName) not ])
			ifTrue: [ | superclassName packageName | 
				superclassName := ast superclassName.
				packageName := ast packageName.
				UndefinedClass createUndefinedClassNamed: superclassName package: packageName ].	
	
	^Smalltalk compiler class new
		source: contents;
		requestor: requestor;
		logged: true;
		evaluate.