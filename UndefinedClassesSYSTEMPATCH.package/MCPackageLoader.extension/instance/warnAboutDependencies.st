*UndefinedClassesSYSTEMPATCH
warnAboutDependencies 
	ShouldWarnAboutDepencies ifTrue: [ 
		self notify: self dependencyWarning  ]