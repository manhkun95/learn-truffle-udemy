// var HDWalletProvider = require("truffle-hdwallet-provider");
// var mnemonic = "rug enlist economy expose spider toss upon basic jewel turn fitness split";

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "1" // Match any network id
    },
    // ropsten: {
    //   provider: function () {
    //     return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/v3/c71fd97921884272bbc471c6e76bc14b")
    //   },
    //   network_id: 3,
    //   gas: 3000000,
    //   gasPrice: 21
    // }
  }
};