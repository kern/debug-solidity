const DebugCounter = artifacts.require('DebugCounter');

contract('DebugCounter', () => {
  let counter
  let result

  beforeEach(async () => {
    counter = await DebugCounter.new("my counter")
  })

  it('debugs using an incremental counter', async () => {
    assert.equal(await counter.count(), 0)

    result = await counter.increment()
    assert.equal(result.logs[0].event, "DebugCount")
    assert.equal(result.logs[0].args.name, "my counter")
    assert.equal(result.logs[0].args.count.toNumber(), 1)

    result = await counter.increment()
    assert.equal(result.logs[0].event, "DebugCount")
    assert.equal(result.logs[0].args.name, "my counter")
    assert.equal(result.logs[0].args.count.toNumber(), 2)

    result = await counter.increment()
    assert.equal(result.logs[0].event, "DebugCount")
    assert.equal(result.logs[0].args.name, "my counter")
    assert.equal(result.logs[0].args.count.toNumber(), 3)
  })
})
