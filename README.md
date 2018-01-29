## BANKING ##
This is intended as a practice into best practices for coding a very simple application.

The application is a simple banking simulator and is expected to be run in a ruby REPL such as IRB or PRY.

The account class contains the following public methods:
```
$ .deposit: 		# Adds to the balance
$ .withdraw: 		# Removes from the balance
$ .balance: 		# Returns the balance
$ .print_statement 	# Prints a record of all of the previous transactions in reverse chronological order. 
```

The transaction_record class contains the following public methods:
```
$ .to_s: 	# Returns a string representing the transaction
```
Both classes are fully tested.

Further additions to this code could include refactoring the print_statement logic out of account into it's own printer class.

