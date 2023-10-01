# Smart contract using struct

This project consists of creating an EmployeeContract usin struct.

# Description
This program contains a simple EmployeeContract using struct written in Cadence, a transaction part and a script part.
# Contract
 This contract has 2 function that demonstrates how to add and get an employee.
 ```javascript
pub contract EmployeeContract {

    // Defining the Employee struct
    pub struct Employee {
        pub let id: UInt64
        pub let name: String

        // Constructor for the Employee struct
        init(id: UInt64, name: String) {
            self.id = id
            self.name = name
        }
    }

    // Declaring a dictionary to store id:name pair
    pub var employees: {UInt64: Employee}

    // Constructor for the contract
    init() {
        self.employees = {}
    }

    // Function to add new employee to the dictionary
    pub fun addNewEmployee(id: UInt64, name: String) {
        let employee = Employee(id: id, name: name)
        self.employees[id] = employee
    }

    // Function to get a employee by id
    pub fun getEmployee(id: UInt64): Employee? {
        return self.employees[id]
    }
}
```
  # 1.addNewEmployee function
  This function helps to add new employee to the dictiomnary.
  
  # 2.getEmployee function
  The function is used get an employee based on the id provided.
# Transactions
Here AddEmployeeTransaction will add new employee by executing function addNewEmployee.
```javascript
// Importing EmployeeContract
import EmployeeContract from 0x05

// Transaction to add an employee
transaction(id: UInt64, name: String) {
    
    prepare(acct: AuthAccount) {}

    execute {
        EmployeeContract.addNewEmployee(id: id, name: name)
        log("Sucessfully added new  employee")
    }
}
```
# Script
Here GetEmployeeScript will get the employee details by calling function getEmployee
```javascript
// Import EmployeeContract
import EmployeeContract from 0x05

pub fun main(id: UInt64): EmployeeContract.Employee? {
  return EmployeeContract.getEmployee(id: id)!
}
```
## Getting Started

### Executing program
To run this project , you can use [Flow Playground](https://play.flow.com/) to Create your Contract, Transaction and Script files.

Once the contract is deployed, you can pass the transaction arguments and then get the employee details by providing the employee id.

## Authors
Adarsh ps

## License
This project is licensed under the MIT License
