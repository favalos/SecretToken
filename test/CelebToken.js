const BigNumber = web3.BigNumber;
const CelebToken = artifacts.require('CelebToken.sol');

contract('CelebToken', function ([ creator, ...accounts]) {

  var publisher = accounts[1];
  var receiver = accounts[2];

  beforeEach(async function () {
      this.token = await CelebToken.new({ from: creator });
    });

  it('Total Count after register', async function () {
    await this.token.publish('SomeHashValue', 250, 6, receiver,{ from: publisher} );
  });
});
