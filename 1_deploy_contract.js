// Get instance of the Linea NFT contract
const lineaNftContract = artifacts.require("LineaNft");

module.exports = function (deployer) {
    // Deploy the contract to Linea
    deployer.deploy(lineaNftContract);
};