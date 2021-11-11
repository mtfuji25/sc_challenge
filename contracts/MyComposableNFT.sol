pragma solidity 0.7.6;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./interfaces/IERC998TopDownERC20.sol";

// TODO: layer in composability for ERC20 tokens based on EIP-998 (Top Down ERC20 specifically)
contract MyComposableNFT is ERC721("MyComposable", "MYC"), IERC998TopDownERC20 {

    function mint(address _recipient, uint256 _tokenId) external {
        _mint(_recipient, _tokenId);
    }

    function transferERC20(uint256 _tokenId, address _to, address _erc20Contract, uint256 _value) external override {

        require(_to != address(0), "Can't transfer to zero address.");

        require(_isApprovedOrOwner(msg.sender, _tokenId), "The caller of ERC721 transfer must be owner or must be approved.");

        emit TransferERC20(_tokenId, _to, _erc20Contract, _value);
    }
}
