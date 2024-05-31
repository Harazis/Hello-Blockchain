// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/HelloWorld.sol";

contract InteractWithHelloWorld is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address helloWorldAddress = vm.envAddress("HELLO_WORLD_ADDRESS");

        console.log("Using HelloWorld contract at address:", helloWorldAddress);

        vm.startBroadcast(deployerPrivateKey);

        HelloWorld helloWorld = HelloWorld(helloWorldAddress);

        console.log("Calling message() function");
        string memory message = helloWorld.message();
        console.log("Message:", message);

        console.log("Calling setMessage() function");
        helloWorld.setMessage("Hello, Blockchain!");

        console.log("Calling message() function again");
        message = helloWorld.message();
        console.log("Message:", message);

        vm.stopBroadcast();
    }
}
