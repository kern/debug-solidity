const Debuggable = artifacts.require('Debuggable');
const MockDebuggable = artifacts.require('MockDebuggable');

contract('Debuggable', () => {
  let mock
  let result

  beforeEach(async () => {
    await MockDebuggable.link(Debuggable)
    mock = await MockDebuggable.new()
  })

  it('debugs strings', async () => {
    result = await mock.mockDebugString()
    assert.equal(result.logs[0].event, "DebugString")
    assert.equal(result.logs[0].args.value, "foo bar baz")
  })

  it('debugs bytes32', async () => {
    result = await mock.mockDebugBytes32()
    assert.equal(result.logs[0].event, "DebugBytes32")
    assert.equal(result.logs[0].args.value, "0x1234567812345678123456781234567812345678123456781234567812345678")
  })

  it('debugs uint256', async () => {
    result = await mock.mockDebugUint256()
    assert.equal(result.logs[0].event, "DebugUint256")
    assert.equal(result.logs[0].args.value.toNumber(), 115792089237316195423570985008687907853269984665640564039457584007913129639935)
  })

  it('debugs address', async () => {
    result = await mock.mockDebugAddress()
    assert.equal(result.logs[0].event, "DebugAddress")
    assert.equal(result.logs[0].args.value, "0x1234123412341234123412341234123412341234")
  })

  it('debugs reverts', async () => {
    let reverted = false
    try {
      await mock.mockDebugRevert()
    } catch (err) {
      assert.match(err.message, /revert/)
      reverted = true
    }

    assert.isTrue(reverted)

    reverted = false
    try {
      await mock.mockDebugRevertMessage()
    } catch (err) {
      assert.match(err.message, /revert/)
      reverted = true
    }

    assert.isTrue(reverted)
  })

  it('debugs noop', async () => {
    result = await mock.mockDebugNoop()
    assert.equal(result.logs.length, 0)

    result = await mock.mockDebugNoopConstant()
    assert.equal(result.length, 0)
  })
})
