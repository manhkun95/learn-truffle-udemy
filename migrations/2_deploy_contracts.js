var FixSupplyToken = artifacts.require("./FixedSupplyToken.sol");
var Exchange = artifacts.require("./Exchange.sol");

module.exports = function (deployer) {
  deployer.deploy(FixSupplyToken);
  deployer.deploy(Exchange);
};
