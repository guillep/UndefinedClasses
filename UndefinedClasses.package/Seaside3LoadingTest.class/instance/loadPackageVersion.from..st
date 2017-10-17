actions
loadPackageVersion: aString from: url
	 	 
	Gofer new url: url ; version: aString  ; load
	
	"Gofer new 
		directory: MCCacheRepository default directory absolutePath ;
		version: aString ; 
		load"