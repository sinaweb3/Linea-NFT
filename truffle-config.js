require('dotenv').config();
const HDWalletProvider = require('@truffle/hdwallet-provider');
const { MNEMONIC, INFURA_RPC } = process.env;

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*"
    },
    linea: {
      provider: () => new HDWalletProvider(MNEMONIC, INFURA_RPC),
      network_id: '59140',
    }
  },
  compilers: {
    solc: {
      version: "0.8.19",
    }
  }
};