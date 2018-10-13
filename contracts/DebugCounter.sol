pragma solidity ^0.4.24;

/// @title Debug counter utility contract
/// @author Alexander Kern <alex@kern.io>
contract DebugCounter {
    /// @dev The name of the counter
    string public name;

    /// @dev The count of the counter
    uint256 public count;

    event DebugCount(string name, uint256 count);

    /// @dev Creates a new DebugCounter
    constructor(string _name) {
        name = _name;
    }

    /// @dev Fallback to increment()
    function() public {
        increment();
    }

    /// @dev Increments the count and emits a DebugCount event
    function increment() public {
        count++;
        emit DebugCount(name, count);
    }
}
