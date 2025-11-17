/*************************************************************************
@Name: Employee Class
@author: Suresh
@Date: 11 June 2025
@Description: Create a class to represent employee(Department, Location, Employee Id, 
Employee Name, Salary, Designation)
***************************************************************************/
public class Employee {
    public String department { get; set; }
    public String location { get; set; }
    public String employeeId { get; set; }
    public String employeeName { get; set; }
    public Decimal salary { get; set; }
    public String designation { get; set; }

    // Constructor
    public Employee(String department, String location, String employeeId,
                    String employeeName, Decimal salary, String designation) {
        this.department = department;
        this.location = location;
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.salary = salary;
        this.designation = designation;
    }
}