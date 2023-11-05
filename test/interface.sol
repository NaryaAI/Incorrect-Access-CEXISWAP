// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

interface ICEXISWAP {
    function initialize(
        string memory name,
        string memory ticker,
        address _treasuryWallet,
        address _communityWallet,
        address _admin,
        address _strategy
    ) external;

    function upgradeToAndCall(
        address newImplementation,
        bytes memory data
    ) external payable;
}

interface IUSDT {
    function approve(address _spender, uint256 _value) external;

    function balanceOf(address owner) external view returns (uint256);

    function transfer(address _to, uint256 _value) external;
}