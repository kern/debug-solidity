# debuggable-solidity

![Travis](https://img.shields.io/travis/kern/debuggable-solidity.svg) 
![npm](https://img.shields.io/npm/v/debuggable-solidity.svg)

Solidity library and related contracts for debugging contracts

[API Reference](#api-reference)

## Installation &amp; Usage

Install using yarn/npm:

    $ yarn add debuggable-solidity

Then, in your Solidity file, use the library:

```solidity
import "debuggable-solidity/contracts/Debuggable.sol";

contract MyContract {

    using Debuggable for *;

    function myFunction() public {
      string valueString = "foobar";
      bytes32 valueBytes32 = 0x1234;
      uint256 valueUint256 = 1234;
      address valueAddress = address(0x0

      valueString.debug();  // => emit DebugString(value: "foobar")
      valueBytes32.debug(); // => emit DebugBytes32(value: 0x1234)
      valueUint256.debug(); // => emit DebugUint256(value: 1234)
      valueAddress.debug(); // => emit DebugAddress(value: 0x0)

      Debuggable.debugRevert("msg");  // always reverts
      Debuggable.debugNoop();         // does nothing
      Debuggable.debugNoopConstant(); // does nothing (constant fn)
    }

}
```

## Development

PRs welcome. To install dependencies and start the local development server:

    $ yarn install
    $ yarn run migrate
    $ yarn start

### Testing

    $ yarn test
    $ yarn watch

### Regenerate documentation

    $ npm run gen-docs

## License

Licensed under Apache 2.0.

# API Reference
