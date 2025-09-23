//SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/Storage.sol";

contract DeploySimpleStorage is Script{
    function run() external returns (SimpleStorage){
        vm.startBroadcast();
        SimpleStorage simpleStorge = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorge;
    }
}