// Solidity Cheat Sheet


USEFUL GLOBAL VARIABLES

block.number (uint)		//current block number
block.timestamp (uint)	//current block timestamp

msg.data (bytes)		//complete calldata
msg.sender (address)	//sender of the message (current call)
msg.value (uint)		//number of wei sent with the message
msg.gas (uint)			//remaining gas

now (uint) 				//current block timestamp (alias for block.timestamp)

tx.origin (address) 	//sender of the transaction (full call chain)
tx.gasprice (uint)		//gas price of the transaction

SCOPE VARIABLES

this					// current contract
this.balance()			

USEFUL METHODS

<address>.balance (uint256) 					//balance of the Address in Wei
<address>.send(uint256 amount) returns (bool)	//send given amount of Wei to Address, returns false on failure
<address>.transfer(uint256 amount)				//send given amount of Wei to Address, throws on failure


FUNCTIONS:

function myFunction() <VISBILITY> <MODIFIER> returns (bool) {
    return true;
}


VISIBILITY 

public		//visible externally and internally (creates a getter function for storage/state variables)
private		//only visible in the current contract
external 	//only visible externally
internal 	//only visible internally (current contract and derived contracts)


MODIFIERS

pure		//disallows modification or access of state
view		//disallows modification of state
payable		//allows function to receive Ether together with a call


USEFUL FUNCTIONS

assert(bool condition): 	//abort execution and revert state changes if condition is false (use for internal error)
require(bool condition): 	//abort execution and revert state changes if condition is false (use for malformed input or error in external component)
revert() 					//abort execution and revert state changes

//Fallback Function
//called when a contract is called and no existing function was specified
function () {
}



