pragma solidity ^0.4.4;

/**
 * Sample coffee transaction
 */
contract CoffeeTransaction {

  // Etherium Addresses
  address[6] public buyers;

  function buy(uint coffeeId) public returns (uint) {
    // Similar to a `If` statement to check if 
    require(coffeeId >= 0 && coffeeId <= 5);

    //  To get the address of the person or smart contract who called this function, we use msg.sender.
    buyers[coffeeId] = msg.sender;

    // Confirmation
    return coffeeId;
  }

  function getBuyers() public returns (address[6]) {
    return buyers;
  }
}
