pragma solidity ^0.5.0;

import "./ERC20.sol";

contract TutorialToken is ERC20 {
	string public name = "JYSTOKEN";
	string public symbol = "JYS";
	uint8 public decimals = 2;
	uint public INITIAL_SUPPLY = 12000;
	address manager;

	constructor() public {
		manager = 0xd77Ba6369a6df14D66dC63A95e1Ff9CeA54C5946;
		_mint(address(0xd77Ba6369a6df14D66dC63A95e1Ff9CeA54C5946), INITIAL_SUPPLY);
	}
	
	function mint(address _receive, uint amount) public{
		require(manager == msg.sender);
		_mint(_receive,amount);
	}
}
