parsing
parse: aString 
	| ast |
	
	^ [ RBParser parseMethod: aString ]
		on: Notification
		do: [  ast := RBParser parseExpression: aString.
				[ CDClassParser fromASTNode: ast ]
					on: Notification
					do: [ ast ] ]