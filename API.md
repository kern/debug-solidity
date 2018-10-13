* [Debuggable](#debuggable)
  * [debugRevert](#function-debugrevert)
  * [debug](#function-debug)
  * [debugNoopConstant](#function-debugnoopconstant)
  * [debug](#function-debug)
  * [debugRevert](#function-debugrevert)
  * [debug](#function-debug)
  * [debug](#function-debug)
  * [debugNoop](#function-debugnoop)
  * [DebugString](#event-debugstring)
  * [DebugBytes32](#event-debugbytes32)
  * [DebugUint256](#event-debuguint256)
  * [DebugAddress](#event-debugaddress)

# Debuggable

Alexander Kern <alex@kern.io>

## *function* debugRevert

Debuggable.debugRevert() `pure` `29b9505f`

> Reverts when called




## *function* debug

Debuggable.debug(value) `nonpayable` `2f50fbfa`

> Emits a DebugString event with a string value

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *string* | value | The string value |


## *function* debugNoopConstant

Debuggable.debugNoopConstant() `pure` `58e8e8db`

> Does nothing (constant fn)




## *function* debug

Debuggable.debug(value) `nonpayable` `6714a34e`

> Emits a DebugAddress event with an address value

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *address* | value | The address value |


## *function* debugRevert

Debuggable.debugRevert(message) `pure` `6a9b418f`

> Reverts with a message when called

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *string* | message | The message |


## *function* debug

Debuggable.debug(value) `nonpayable` `815dd951`

> Emits a DebugUint256 event with a uint256 value

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | value | The uint256 value |


## *function* debug

Debuggable.debug(value) `nonpayable` `9bb4050e`

> Emits a DebugBytes32 event with a bytes32 value

Inputs

| **type** | **name** | **description** |
|-|-|-|
| *bytes32* | value | The bytes32 value |


## *function* debugNoop

Debuggable.debugNoop() `nonpayable` `eda892c1`

> Does nothing



## *event* DebugString

Debuggable.DebugString(value) `20670ef4`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *string* | value | not indexed |

## *event* DebugBytes32

Debuggable.DebugBytes32(value) `110cb96f`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *bytes32* | value | not indexed |

## *event* DebugUint256

Debuggable.DebugUint256(value) `43d4b470`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *uint256* | value | not indexed |

## *event* DebugAddress

Debuggable.DebugAddress(value) `e7375f84`

Arguments

| **type** | **name** | **description** |
|-|-|-|
| *address* | value | not indexed |


---