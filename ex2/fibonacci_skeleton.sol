pragma solidity ^0.4.16;


contract Fibonacci {

    event FibCalcd(uint fib);

	function calculate(uint position) returns (uint result) {
        if (position < 2) {
    	    result = position;
    	} else {
    	    uint tmp = calculate(position - 1) + calculate(position - 2);
    	    result =  tmp;
    	}
    	FibCalcd(result);
    	return result;
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {
	}
}
