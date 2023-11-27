//1.SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract solidity1{
    uint internal password=2965;
    function check_password(uint input_password)public view returns(bool) {
        require(input_password==password,"Invalid password, cannot call this function");
        return true;
    }
    function division(uint numerator,uint divisor)public pure returns(string memory , uint){
        assert(divisor!=0 && divisor>0);
        uint div=numerator/divisor;
        return ("Division is possible", div);
    }
    function range_define(uint number)public pure returns(uint){
        if(number<100){
            revert("Number is too small to be a three digit number");
        }
        else if(number>1000){
            revert("Number is too big to be a three digit number");
        }
        return number;
    }
}
