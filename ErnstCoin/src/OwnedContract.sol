pragma solidity ^0.4.18;

contract Owned {
    address public owner;

    function Owned() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

	/*
	 	Transfers ownership
		Requires request comes from current owner
	*/
    function transferOwnership(address newOwner) onlyOwner public {
        owner = newOwner;
    }
}