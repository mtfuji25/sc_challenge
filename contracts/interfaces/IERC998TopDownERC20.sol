pragma solidity 0.7.6;

// SPDX-License-Identifier: MIT

interface IERC998TopDownERC20 {

// Events
    event TransferERC20(
        uint256 indexed _tokenId, 
        address indexed _to, 
        address indexed _erc20Contract, 
        uint256 _value
    );

    event ReceivedERC20(
        address indexed _from,
        uint256 indexed _tokenId,
        address indexed _erc20Contract,
        uint256 _value
    );

// Functions
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool success);

    function transfer(address to, uint256 value) external returns (bool success);

    function transfer(address to, uint256 value, bytes memory data) external returns (bool success);

    function allowance(address _owner, address _spender) external view returns (uint256 remaining);
}

interface IERC20AndERC223 {

// Functions
    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) external returns (bool success);

    function transfer(address to, uint256 value) external returns (bool success);

    function transfer(
        address to,
        uint256 value,
        bytes memory data
    ) external returns (bool success);

    function allowance(address _owner, address _spender) external view returns (uint256 remaining);
}