actions-Trials
listOfSeasidePackagesFromSeaside3MetacelloConfiguration
	"self new listOfSeasidePackagesFromSeaside3MetacelloConfiguration"
	| conf pckagesToLoad |
	
	Metacello new
		smalltalkhubUser: 'Seaside' project: 'MetacelloConfigurations';
		configuration: 'Seaside3';
		get.
	
	conf := (self class environment at: #ConfigurationOfSeaside3)  project version: #stable.
	pckagesToLoad := (conf spec packages packageSpecsInLoadOrderFor: conf spec) select: [ :each |  each isKindOf: MetacelloPackageSpec ].
	
	^ pckagesToLoad "but order complex..."
	"pckagesToLoad do: [ :p | p load ]"