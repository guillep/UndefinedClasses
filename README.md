# UndefinedClasses

Loading code inside a Pharo image is a daily concern for a Pharo developer. Nevertheless, several problems may arise at loading time that can prevent the code to load or even worse let the system in an inconsistent state.
This project proposes a unified solution for Pharo that reifies Undefined Classes. Our model of Undefined Classes is the result of an objective selection among different alternatives.

We validated our solution through two cases studies: migrating old code and loading code with circular dependencies. This paper also presents the integration of this solution into Pharo regarding the needed Meta-Object Protocol for Undefined Classes and the required modifications of existing tools. For more information take a look at the paper in here:

https://hal.archives-ouvertes.fr/hal-01585305/document
