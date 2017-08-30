pragma solidity ^0.4.4;

import 'truffle/Assert.sol';
import 'truffle/DeployedAddresses.sol';
import '../contracts/CoffeeTransaction.sol';

contract CoffeeTransactionTests {
  CoffeeTransaction cofTrans = CoffeeTransaction(DeployedAddresses.CoffeeTransaction());

  function userCanBuy() {
    uint expcteded = 1;
    uint returnedId = cofTrans.buy(1);
    Assert.equal(returnedId, expcteded, "Coffee Transaction of 1 should be recorded");
  }
}
