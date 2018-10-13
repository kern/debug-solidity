pragma solidity ^0.4.24;

import "../contracts/Debuggable.sol";

contract MockDebuggable {

    using Debuggable for *;

    function mockDebugString() public {
        string memory v = "foo bar baz";
        v.debug();
    }

    function mockDebugBytes32() public {
        bytes32 v = 0x1234567812345678123456781234567812345678123456781234567812345678;
        v.debug();
    }

    function mockDebugUint256() public {
        uint256 v = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
        v.debug();
    }

    function mockDebugAddress() public {
        address v = 0x1234123412341234123412341234123412341234;
        v.debug();
    }

    function mockDebugRevert() public {
        Debuggable.debugRevert();
    }

    function mockDebugRevertMessage() public {
        Debuggable.debugRevert("qux");
    }

    function mockDebugNoop() public {
        Debuggable.debugNoop();
    }

    function mockDebugNoopConstant() public pure {
        Debuggable.debugNoopConstant();
    }

}
