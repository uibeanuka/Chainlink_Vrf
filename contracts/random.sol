// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.7;
import "contracts/VRFConsumer.sol";



contract RandomNumberConsumer is VRFConsumerBaseV2
 {
   bytes32 public keyHash;
   uint256 public fee;
   uint256 public randomResult;
   constructor() VRFConsumerBaseV2(0x8103B0A8A00be2DDC778e6e7eaa21791Cd364625, 0x779877A7B0D9E8603169DdbD7836e478b4624789 )
     public {
     keyHash= 0x474e34a077df58807dbe9c96d3c009b23b3c6d0cce433e59bbf5b34f823bc56c;
     fee = 0.1 * 10 **18; //0.1 LINK
   }
   function getRandomNumber(uint256 userProvidedSeed) public returns (bytes32 requestedId){
       return requestRandomness(keyHash,fee);
   }
   function fulfillRandomness(bytes32 requestId,uint256 randomness) internal override{
       randomnResutl= randomness;
   }
}