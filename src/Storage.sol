//SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract simpleStorage{
    uint myFavNumber = 0;
    
    struct Person {
        string name;
        uint256 favNumber;
    }

    Person[] public listOfPersons;

    mapping(string => uint256) public nameToFavNum;

    function store(uint _favNumber) public {
        myFavNumber = _favNumber;
}
    function retrieve() view public returns(uint){
        return myFavNumber;
    }

    function addPerson  (string memory _name, uint _favNumber) public{
        listOfPersons.push(Person(_name, _favNumber));
        nameToFavNum[_name] = _favNumber;

    }

}