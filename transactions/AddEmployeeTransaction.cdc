// Import employee
import EmployeeContract from 0x05

// Transaction to add a student
transaction(id: UInt64, name: String) {
    
    prepare(acct: AuthAccount) {}

    execute {
        EmployeeContract.addNewEmployee(id: id, name: name)
        log("Sucessfully added new  employee")
    }
}

