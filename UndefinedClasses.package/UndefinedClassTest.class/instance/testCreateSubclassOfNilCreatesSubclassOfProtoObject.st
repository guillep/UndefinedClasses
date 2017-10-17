tests
testCreateSubclassOfNilCreatesSubclassOfProtoObject

	self assertClassDoesNotExist: #ColoredFoo.

	self createClassFromDefinitionString: 'nil subclass: #ColoredFoo
		instanceVariableNames: ''''
		classVariableNames:''''
		package: ''Box'''.
	
	self assertClassExist: #ColoredFoo.
	self assert: (self class environment at: #ColoredFoo) superclass equals: ProtoObject.