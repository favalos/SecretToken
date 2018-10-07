var HDWalletProvider = require("truffle-hdwallet-provider");
/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() {
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>')
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */

var mnemonic = "snap bonus solve grid flower people aisle soldier bid correct rack plunge";

module.exports = {
  networks: {
    development: {
    host: "localhost",
    port: 8545,
    network_id: "*", // Match any network id
    gas: 6712388,  // <--- Use more, perhaps 6700000
    gasPrice: 9000000000
    },
    rinkeby: {
      provider: function() {
        return new HDWalletProvider(mnemonic,"https://rinkeby.infura.io/b26003aa82f74a93926e7f6ed2ecacc4");
      },
      network_id: 1
    }
  }
};
