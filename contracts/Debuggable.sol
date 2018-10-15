pragma solidity ^0.4.24;

/// @title Solidity library for debugging contracts
/// @author Alexander Kern <alex@kern.io>
library Debuggable {

    /// @dev A debug message containing a string value
    /// @param value The string value
    event DebugString(string value);

    /// @dev A debug message containing a bytes32 value
    /// @param value The bytes32 value
    event DebugBytes32(bytes32 value);

    /// @dev A debug message containing a uint256 value
    /// @param value The uint256 value
    event DebugUint256(uint256 value);

    /// @dev A debug message containing an address value
    /// @param value The address value
    event DebugAddress(address value);

    /// @dev Emits a DebugString event with a string value
    /// @param value The string value
    function debug(string value) public returns (string) {
        emit DebugString(value);
        return value;
    }

    /// @dev Emits a DebugBytes32 event with a bytes32 value
    /// @param value The bytes32 value
    function debug(bytes32 value) public returns (bytes32) {
        emit DebugBytes32(value);
        return value;
    }

    /// @dev Emits a DebugUint256 event with a uint256 value
    /// @param value The uint256 value
    function debug(uint256 value) public returns (uint256) {
        emit DebugUint256(value);
        return value;
    }

    /// @dev Emits a DebugAddress event with an address value
    /// @param value The address value
    function debug(address value) public returns (address) {
        emit DebugAddress(value);
        return value;
    }

    /// @dev Reverts when called
    function debugRevert() public pure {
        require(false);
    }

    /// @dev Reverts with a message when called
    /// @param message The message
    function debugRevert(string message) public pure {
        require(false, message);
    }

    /// @dev Does nothing
    function debugNoop() public {
    }

    /// @dev Does nothing (constant fn)
    function debugNoopConstant() public pure {
    }

}
