pragma solidity ^0.4.13;


contract greeter {
	/* Add one variable to hold our greeting */
	string[] greetings;
	uint public count = 0;

    /* Write one line of code for the contract to set our greeting */
	function greeter(string _greeting) public {
		greetings.push(_greeting);
	}

    /* Write one line of code to allow the contract to return our greeting */
	function greet() constant returns (string)  {
		count += 1;
		return greetings[count % greetings.length];
	}

	function() {
	}
}
