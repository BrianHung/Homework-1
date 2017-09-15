pragma solidity ^0.4.16;

/* Attempt at persist fib table (don't know if this actually works):
 * Exception during execution. (invalid opcode).
 *                                         ^ CS61C
 */

contract Fibonacci {
    uint[] fibs;

    event FibCalcd(uint fib);

	function calculate(uint position) returns (uint result) {
        if (fibs.length == 0 || position < fibs.length) {
            if (position < 2) {
    	        result = position;
    	        fibs.push(result);
    	    } else {
    	        uint tmp = calculate(position - 1) + calculate(position - 2);
    	        result = tmp;
    	        fibs.push(result);
    	    }
    	} else {
            result = fibs[position];
        }
    	FibCalcd(result);
    	return result;
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {
	}
}
