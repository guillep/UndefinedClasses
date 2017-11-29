actions
loadSeasidePackagesInRandomOrder
	|shuffledPackagesToLoad maxNumerOfUndefinedClasses|
	
	maxNumerOfUndefinedClasses := 0.

	"disable some MC stuff before loading"
	MCMethodDefinition initializersEnabled: false.
     MCPackageLoader doNotWarnAboutDependencies.
	
	"load all packages"
	shuffledPackagesToLoad := self seasidePackagesToLoad shuffle.
	shuffledPackagesToLoad do: [ :p |
		self loadPackageVersion: p name from: p value.
		maxNumerOfUndefinedClasses := UndefinedClass allSubclasses size max:  maxNumerOfUndefinedClasses ].
	
	^  maxNumerOfUndefinedClasses