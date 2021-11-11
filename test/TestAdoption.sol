/// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol"; //used to get the address of the smart contract we want to test
import "../contracts/Adoption.sol";

contract TestAdoption {
    
    //getting the system (contract) under test by getting the address of the adoption contract
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    uint expectedPetId = 8; //id of the pet we want to use to test

    address expectedAdopter = address(this); //this is like the msg.sender but for test

    //test that the requested petId is returned from request adoption
    //test that adopter for the petId intest is the expectedAdopter
    //test getadoptions
    // should have same count as adopters above
    // that expected adopter should have correct index - i.e. the right pet should belong to the expectedadopter
    //it should be noted that test method should start with "test"

    function test_pet_can_be_requested() public {
        uint actualPetId = adoption.requestAdoption(expectedPetId);

        Assert.equal(actualPetId, expectedPetId, "the right pet is requested for adoption");
    }

    function test_pet_is_requested_by_the_right_adopter() public {
        
        address adopterOfPetInTest = adoption.adopters(expectedPetId);

        Assert.equal(adopterOfPetInTest, expectedAdopter, "pet is requested by the right adopter, which is this contract");
    }

    function test_right_pet_should_belong_to_the_right_adopter() public {
        //should be noted that each methods should have their own test setup
        address[16] memory adopters = adoption.getAdoptions();
        address actualAdopter = adopters[expectedPetId]; //the adopter of the petId we are testing

        Assert.equal(actualAdopter, expectedAdopter, "expected adopter requested the expectedPet");
        
    }

}
