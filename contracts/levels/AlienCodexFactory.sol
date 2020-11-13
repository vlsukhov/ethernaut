pragma solidity ^0.6.0;

import './base/Level.sol';
import './AlienCodex.sol';

contract AlienCodexFactory is Level {

  function createInstance(address _player) override public payable returns (address) {
    _player;
    return address(new AlienCodex());
  }

  function validateInstance(address payable _instance, address _player) override public returns (bool) {
    // _player;
    AlienCodex instance = AlienCodex(_instance);
    return instance.owner() ==_player;
  }
}
