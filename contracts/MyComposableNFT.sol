pragma solidity 0.7.6;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// TODO: layer in composability for ERC20 tokens based on EIP-998 (Top Down ERC20 specifically)
contract MyComposableNFT is ERC721("MyComposable", "MYC") {
    function mint(address _recipient, uint256 _tokenId) external {
        _mint(_recipient, _tokenId);
    }
}
