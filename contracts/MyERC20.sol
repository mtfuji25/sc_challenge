pragma solidity 0.7.6;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyERC20 is ERC20("MyERC20", "MYE") {
    function mint(address _recipient, uint256 _amount) external {
        _mint(_recipient, _amount);
    }
}
