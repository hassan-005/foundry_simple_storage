


// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {simpleStorage} from "contracts/simple_storage.sol";

contract StorageFactory{

    simpleStorage[] public listofSimpleStorageContract;

    function createSimpleStorage() public {
        simpleStorage mySimpleStorage = new simpleStorage();
        listofSimpleStorageContract.push(mySimpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        simpleStorage mySimpleStorage = listofSimpleStorageContract[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) view public returns (uint256) {
        simpleStorage mySimpleStorage = listofSimpleStorageContract[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }

}