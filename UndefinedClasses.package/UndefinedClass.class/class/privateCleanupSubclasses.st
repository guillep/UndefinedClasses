private - cleanup
privateCleanupSubclasses
	
	| correctUndefinedClasses incorrectUndefinedClasses |
	correctUndefinedClasses := UndefinedClass subclasses select: [ :c | c environment == Smalltalk globals ].
	incorrectUndefinedClasses := WeakArray with: (UndefinedClass subclasses select: [ :c | c environment == Smalltalk globals ]).
	UndefinedClass subclasses: correctUndefinedClasses.
	Smalltalk garbageCollectMost.
	self assert: (incorrectUndefinedClasses allSatisfy: #isNil)
	
	
