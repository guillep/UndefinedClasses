actions
executeInitializeClassMethodsInCorrectOrder
	
	self classesToInitialize do: [  : c | c initialize ]