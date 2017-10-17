actions-Trials
refreshDirtyMCPackages

| modifiedMCPackages |
modifiedMCPackages := MCWorkingCopy registry values select: [  :w | w modified ].
modifiedMCPackages do: [ :p |
	|patch| 
	patch := p changesRelativeToRepository: MCCacheRepository uniqueInstance.
	(patch notNil and: [ patch isEmpty ]) ifTrue: [ 
		 p modified: false.
] ].