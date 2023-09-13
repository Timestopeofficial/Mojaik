//SPDX-License-Identifier: UNLICENSED
//SPDX-FileCopyrightText: ©2022 Mojaik Team

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20, Ownable {
    /**
    *
    *Initial Creates `50 billion` tokens to constract's owner
    *
    * Requirements:
    *
    *- No more tokens can be created.
    *
    */
    constructor() ERC20("Mojaik FEE Token", "FEE") {
        _mint(msg.sender, 50000000000000000000000000000 );
    }

    /**
    * @dev Destroys a `value` amount of contract's owner.
    *
    * Relies on the `_burn` mechanism.
    *
    * NOTE: This function can only be called by the contract owner.
    */

    function burn(uint256 value) public virtual onlyOwner returns (bool) {
        _burn(owner(), value);
        return true;
    }
}