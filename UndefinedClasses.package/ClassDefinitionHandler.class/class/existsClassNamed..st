compiling
existsClassNamed: className
	
	^ (className = #nil or: [ self environment includesKey: className ])