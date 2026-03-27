// SPDX-License-Identifier: LGPL-3.0-only

pragma solidity 0.8.24;

contract SmartContractTest {
    // Variables

    // Numbers
    uint num1 = 115792089237316195423570985008687907853269984665640564039457584007913129639935; // [0 / 2^256-1]
    uint256 num2 = 115792089237316195423570985008687907853269984665640564039457584007913129639935; // [0 / 2^256-1]
    
    uint16 num3 = 65535; // [0 / 2^16-1]
    
    uint8 num4 = 255; // [0 / 2^8-1]

    int8 num5 = -128; // [-2^7 / 2^7-1]
    int8 num6 = 127; // [-2^7 / 2^7-1]

    // Strings 
    string str1 = "One";
    string str2 = "Two";

    // Booleans
    bool bln1 = true;
    bool bln2 = false;

    // Addresses
    address addr = 0x742d35Cc6634C0532925a3b844Bc454e4438f44e;

    // Arrays
    uint[5] arr = [1, 2, 3, 4, 5];

    // Mappings
    mapping(address => uint) map;

    // Enums
    enum status {
        Pendding,
        Aproved,
        Rejected
    }

    // Struncts
    struct person {
        string name;
        uint256 age;
    }

    // Modifiers
    modifier divisionValidation(uint num2_) {
        if(num2_ == 0) revert();
        _;
    }

    // Events
    event additionEvent(uint num1_, uint num2_, uint result);

    // Construct
    constructor() {
        map[addr] = 1;
    }

    // Functions [function name(argumnets) + visibility (external | internal | public | private) + pure? + view? + payable? + modifiers? + returnValue]

    // Externals
    function add(uint num1_, uint num2_) external returns(uint) {
        uint result_ = num1_ + num2_;
        emit additionEvent(num1_, num2_, result_);
        return result_;
    }

    function substraction(uint num1_, uint num2_) external pure returns(uint result_) {
        result_ = num1_ - num2_;
    }

    function divide(uint num1_, uint num2_) external pure divisionValidation(num2_) returns(uint result_) {
        result_ = num1_ - num2_;
    }    

    // Internals
}
