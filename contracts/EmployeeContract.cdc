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

    // Declaring a dictionary to store employee details.
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
