
// Import StuctContract
import EmployeeContract from 0x05

pub fun main(id: UInt64): EmployeeContract.Employee? {
  return EmployeeContract.getEmployee(id: id)!
}