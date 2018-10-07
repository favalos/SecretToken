var CelebToken = artifacts.require("./CelebToken.sol");

module.exports = function(deployer, network, accounts) {
    deployer.deploy(CelebToken);  
};
