// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract DogMints is ERC20 {

    constructor(string memory tokenName, string memory tokenSymbol) ERC20(tokenName, tokenSymbol) 
    
    {

    
    }
     function mintSUP() public payable
     {
        require(msg.value==1000,"10 SUP per wei");
        _mint(msg.sender,10);
     }  

     function getEtherbalance(address _address) public view returns(uint256)
     {
        return _address.balance;
     }


}
