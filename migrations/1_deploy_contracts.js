const Debuggable = artifacts.require('Debuggable')

module.exports = async function(deployer) {
  await deployer.deploy(Debuggable);
};
