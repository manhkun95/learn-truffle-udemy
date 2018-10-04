var fixedSupplyToken = artifacts.require("./FixedSupplyToken.sol");

contract('MyToken', function (accounts) {
  it("should verify this in here", function () {
    var _totalSupply;
    var myTokenInstance;
    return fixedSupplyToken.deployed().then(function (instance) {
      myTokenInstance = instance;
      return myTokenInstance.totalSupply.call();
    }).then(function (totalSupply) {
      _totalSupply = totalSupply;
      return myTokenInstance.balanceOf(accounts[0]);
    }).then(function (balanceAccountOwner) {
      assert.equal(balanceAccountOwner.toNumber(), _totalSupply.toNumber(), "Total Amount of tokens is owned by owner");
    })
  });

  it("Second account should own no tokens", function () {
    var myTokenInstance;
    return fixedSupplyToken.deployed().then(function (install) {
      myTokenInstance = install;
      return myTokenInstance.balanceOf(accounts[1]);
    }).then(function (balanceAccountOwner) {
      assert.equal(balanceAccountOwner.toNumber(), 0, "Total Amount of tokens is owned by some other address")
    })
  });

  // it("should send token correctly", function () {
  //   var token;

  //   var account_one = accounts[0];
  //   var account_two = accounts[1];

  //   var account_one_starting_balance;
  //   var account_two_starting_balance;
  //   var account_one_ending_balance;
  //   var account_two_ending_balance;

  //   var amount = 10;

  //   return fixedSupplyToken.deployed().then(function (instance) {
  //     token = instance;
  //     return token.balanceOf
  //   })
  // });
})