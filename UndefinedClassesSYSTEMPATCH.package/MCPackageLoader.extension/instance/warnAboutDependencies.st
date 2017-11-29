*UndefinedClassesSYSTEMPATCH
warnAboutDependencies 
	self shouldWarnAboutDependencies ifTrue: [ 
		self notify: self dependencyWarning  ]