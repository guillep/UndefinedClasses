accessing
classesToInitialize 
	|classesToInitialize|

	classesToInitialize := OrderedCollection new.
	self packagesNames do: [ :packageName |
		|classes|
 		classes := (RPackage organizer packageNamed: packageName) definedClasses collect: [  :c | c  ].
		classesToInitialize addAll: ( classes select: [ : c | c class includesLocalSelector: #initialize ]) 
	].

	^ classesToInitialize