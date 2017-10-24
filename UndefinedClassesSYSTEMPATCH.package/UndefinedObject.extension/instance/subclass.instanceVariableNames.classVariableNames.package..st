*UndefinedClassesSYSTEMPATCH
subclass: aString instanceVariableNames: aString2 classVariableNames: aString3 package: aString4 
	"This the the clear sign that there is a missing hook in the compiler. Hijakcing nil this way is terrible."
	
	| def name classDefinitionSuperclassNode | 	
		self halt.
	classDefinitionSuperclassNode := thisContext sender method ast statements first value receiver.
	
	(classDefinitionSuperclassNode isLiteralNode and: [ classDefinitionSuperclassNode value isNil ]) ifTrue: [ 
		"This means somebody intentionally created a subclass of nil.
		Subclasses of nil are dangerous but useful to create proxies."
		
		"We keep the old behaviour of creating a subclass of ProtoObject instead of a subclass of nil.
		In case a subclass of nil is desired, change the superclass of the new class by hand."
		^ ProtoObject subclass: aString instanceVariableNames: aString2 classVariableNames: aString3 package: aString4.
	].

	classDefinitionSuperclassNode isVariable ifTrue: [ 
		"This case means that we are asking to create a class of an unknown superclass.
		In this case, we create a new undefined superclass and it is the reponsibility of the user to install a real class."

"	classParser := MinimalClassParser new parseDefinition: codeString.
	classParser isSuperClassDefined ifFalse: [ UndefinedClassHandler new handleDefinitionWithParser: classParser ]."
 
	def := String streamContents: [ :s |
		s << classDefinitionSuperclassNode name.
		s << ' subclass: #'.
		s <<  aString.
		s << ' instanceVariableNames: '''.
		s << aString2.
		s << ''' classVariableNames: '''.
		s << aString3.
		s << ''' package: '''.
		s << aString4.
		s << ''''. 
		].
	^ UndefinedClassHandler new
		handleDefinitionString: def.
	].

	self error: 'Cannot create a subclass of nil from arbitrary code'.
