baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec 
			package: 'UndefinedClasses';
			package: 'UndefinedClassesSYSTEMPATCH' with: [ spec requires: #('UndefinedClasses') ] ]