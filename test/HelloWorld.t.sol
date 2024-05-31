// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function testInitialMessage() public view {
        assertEq(helloWorld.message(), "Hello, World!");
    }

    function testSetMessage() public {
        helloWorld.setMessage("Hello, Blockchain!");
        assertEq(helloWorld.message(), "Hello, Blockchain!");
    }
}
