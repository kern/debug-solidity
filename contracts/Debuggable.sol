pragma solidity ^0.4.24;

/// @title Solidity library for debugging contracts
/// @author Alexander Kern <alex@kern.io>
library Debuggable {

    event DebugString(string value);
    event DebugBytes32(bytes32 value);
    event DebugUint256(uint256 value);
    event DebugAddress(address value);

    function debug(string value) public {
        emit DebugString(value);
    }

    function debug(bytes32 value) public {
        emit DebugBytes32(value);
    }

    function debug(uint256 value) public {
        emit DebugUint256(value);
    }

    function debug(address value) public {
        emit DebugAddress(value);
    }

    function debugRevert() public pure {
        require(false);
    }

    function debugRevert(string message) public pure {
        require(false, message);
    }

    function debugNoop() public {
    }

    function debugNoopConstant() public pure {
    }

}
