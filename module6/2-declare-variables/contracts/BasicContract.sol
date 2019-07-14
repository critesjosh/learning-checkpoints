/*

    Define a contract called "BasicContract".

    Include a pragma statement.

    Declare the following variables in the contract storage:
        - an unsigned integer called "idCount"
        - an address called "owner"
        - a string called "name"
        - an enum called "Status" with properties "Inactive", "Pending", "Complete"
        - a mapping called "balances" that takes an address and returns an unsigned integer
        - a struct called "Details" that contains the following properties
            - an unsigned integer called "amountRemaining"
            - a boolean called "isAvailable"
            - a "Status" enum called status
        - a mapping that takes a uint8 and returns an instance of the Details struct

    Include the keyword "public" to create a getter function for each variable. This is required for the tests to pass.
*/

pragma solidity ^0.5.0;

contract BasicContract {

    uint public idCount;
    address public owner;
    string public name;
    mapping(address => uint) public balances;

    enum Status {Initialized, Pending, Complete}

    struct Details {
        uint amountRemaining;
        bool isAvailable;
        Status status;
    }

    mapping(uint8 => Details) public itemDetails;

}