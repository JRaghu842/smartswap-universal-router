// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

struct SmartSwapParameters {
    address v2Factory;
    address v3Factory;
    bytes32 pairInitCodeHash;
    bytes32 poolInitCodeHash;
}

contract SmartSwapImmutables {
    /// @dev The address of UniswapV2Factory
    address internal immutable UNISWAP_V2_FACTORY;

    /// @dev The UniswapV2Pair initcodehash
    bytes32 internal immutable UNISWAP_V2_PAIR_INIT_CODE_HASH;

    /// @dev The address of SmartSwapFactory
    address internal immutable SMARTSWAP_FACTORY;

    /// @dev The SmartSwapPool initcodehash
    bytes32 internal immutable SMARTSWAP_POOL_INIT_CODE_HASH;

    constructor(SmartSwapParameters memory params) {
        UNISWAP_V2_FACTORY = params.v2Factory;
        UNISWAP_V2_PAIR_INIT_CODE_HASH = params.pairInitCodeHash;
        SMARTSWAP_FACTORY = params.v3Factory;
        SMARTSWAP_POOL_INIT_CODE_HASH = params.poolInitCodeHash;
    }
}
