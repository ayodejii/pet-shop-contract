// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract Adoption{
    address[16] public adopters;

    function requestAdoption(uint petId) public returns (uint){
        
        require(petId > 0 && petId < 15);

        adopters[petId] = msg.sender; //adopter of pet {petId} is the caller of this method

        return petId;
    }

    function getAdoptions() public view returns (address[16] memory) {
        return adopters;
    }
}