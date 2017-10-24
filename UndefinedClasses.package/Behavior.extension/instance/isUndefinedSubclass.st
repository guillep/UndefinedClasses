*UndefinedClasses
isUndefinedSubclass
	"An undefined subclass is a class inherits directly or indirectly from UndefinedClass.
	An undefined subclass is incomplete and cannot probably answer to all requested messages because a superclass is missing."
	^ self instanceSide inheritsFrom: UndefinedClass