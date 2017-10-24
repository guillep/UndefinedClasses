*UndefinedClasses
isUndefined
	"An undefined class is a class that is a direct subclass of UndefinedClass.
	An undefined class is a stub representing a class that is missing in the system."
	^ self superclass == UndefinedClass