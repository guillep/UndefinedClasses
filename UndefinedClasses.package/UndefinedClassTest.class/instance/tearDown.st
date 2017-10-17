running
tearDown
	super tearDown.
	self class environment at: #Foo ifPresent: [ :c | c removeFromSystem  ].
	self class environment at: #ColoredFoo ifPresent: [ :c | c removeFromSystem  ]