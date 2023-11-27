# Error-handling

This is a simple contract developed on solidity which shows how the error gets handled in each of the functions.

## Description

* Password Protection:

The contract has an internal password (password) that restricts access to certain functions.
The check_password function requires a password to be passed as an argument, and it will only execute if the provided password matches the internal password.
* Division Function with Assertion:

The division function performs a division operation and includes an assert statement to ensure that the divisor is non-zero and positive.
If the divisor is zero or negative, the assertion will fail, preventing potential runtime errors.
* Range Definition Function:

The range_define function checks if a given number is within a specific range (between 100 and 1000).
If the number is outside this range, the function reverts with an appropriate error message.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., errhandl.sol). Copy and paste the following code into the file:

```javascript
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
        return number;
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile errhandl.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "errhandl" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it . 
1. Use the check_password function by providing the correct password to ensure access.
2. Explore the behavior of the division function by providing different inputs, including attempts with a divisor of zero.
3. Test the range_define function with numbers inside and outside the specified range.
## Authors

Vismitha P

@vismithaaap@gmail.com

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
