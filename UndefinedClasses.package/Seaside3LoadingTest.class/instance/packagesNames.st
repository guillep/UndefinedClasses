accessing
packagesNames

	| packagesNames |
	packagesNames :=  self seasidePackagesToLoad collect: [ :assoc | assoc key ].
	packagesNames := packagesNames collect: [ :k | k copyUpToLast: $- ].
	
	^ packagesNames