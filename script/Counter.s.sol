// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Whitelist} from "../src/Whitelist.sol";

contract WhiteListScript is Script {
    Whitelist public whitelist;

    function setUp() public {}

    function run() public {

        address[] addresses = [](10);
        
        address user1 = vm.makeAddr("user1");
        addresses.push(user1);
        
        address user2 = vm.makeAddr("user2");
        addresses.push(user2);
        
        address user3 = vm.makeAddr("user3");
        addresses.push(user3);
        
        address user4 = vm.makeAddr("user4");
        addresses.push(user4);
        
        address user5 = vm.makeAddr("user5");
        addresses.push(user5);
        
        address user6 = vm.makeAddr("user6");
        addresses.push(user6);
        
        address user7 = vm.makeAddr("user7");
        addresses.push(user7);
        
        address user8 = vm.makeAddr("user8");
        addresses.push(user8);
        
        address user9 = vm.makeAddr("user9");
        addresses.push(user9);
        
        address user10 = vm.makeAddr("user10");
        addresses.push(user10);



        vm.startBroadcast();

        whitelist = new Whitelist(addresses);

        vm.stopBroadcast();
    }
}
