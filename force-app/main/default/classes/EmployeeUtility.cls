/*************************************************************************
@Name: EmployeeUtility Class
@author: Suresh
@Date: 11 June 2025
@Description: Utility Apex class to have the below functionalities:
1) Function to find number of employees in a department
Pass employee map and department name as parameter to the functionalities
2) Function to find least salaried employee
3) Function to search and print employees based on location
-(Employees working in a particular location)
-Pass the employee map and location to be searched as parameter to the functionalities
4)Function to find maximum salary in each designation
-Print the employee information also
-(Designation wise employees should be grouped and find max salary)
***************************************************************************/
public class EmployeeUtility {
    
    //Function to find number of employees in a department
    public static Integer getCountByDepartment(Map<String, Employee> empMap, String departmentName) {
        Integer count = 0;
        for (Employee emp : empMap.values()) {
            if (emp.department == departmentName) {
                count++;
            }
        }
        return count;
    }
    
    //Function to find least salaried employee
    public static Employee getLeastSalariedEmployee(Map<String, Employee> empMap) {
        Employee least = null;
        for (Employee emp : empMap.values()) {
            if (least == null || emp.salary < least.salary) {
                least = emp;
            }
        }
        return least;
    }
    
    //Function to search and print employees based on location
    public static void printEmployeesByLocation(Map<String, Employee> empMap, String location) {
        System.debug('--- Employees in location: ' + location + ' ---');
        for (Employee emp : empMap.values()) {
            if (emp.location == location) {
                System.debug(emp.employeeName + ' | ' + emp.employeeId + ' | ' + emp.designation);
            }
        }
    }
    
    //Function to find maximum salary in each designation and Print Employee information
    public static void printMaxSalaryByDesignation(Map<String, Employee> empMap) {
        Map<String, Employee> maxSalaryMap = new Map<String, Employee>();
        
        for (Employee emp : empMap.values()) {
            if (!maxSalaryMap.containsKey(emp.designation) || emp.salary > maxSalaryMap.get(emp.designation).salary) {
                maxSalaryMap.put(emp.designation, emp);
            }
        }
        
        System.debug('--- Max Salary by Designation ---');
        for (String designation : maxSalaryMap.keySet()) {
            Employee maxEmp = maxSalaryMap.get(designation);
            System.debug('Designation: ' + designation);
            System.debug('Employee: ' + maxEmp.employeeName + ', Salary: ' + maxEmp.salary);
        }
    }
}

/** Anonymous window
// Step 1: Create sample employee map
Map<String, Employee> empMap = new Map<String, Employee>();

empMap.put('E001', new Employee('HR', 'Chennai', 'E001', 'Arun', 40000, 'Executive'));
empMap.put('E002', new Employee('IT', 'Bangalore', 'E002', 'Beena', 55000, 'Developer'));
empMap.put('E003', new Employee('HR', 'Chennai', 'E003', 'Charles', 35000, 'Executive'));
empMap.put('E004', new Employee('Sales', 'Mumbai', 'E004', 'Divya', 60000, 'Manager'));
empMap.put('E005', new Employee('IT', 'Bangalore', 'E005', 'Eshwar', 70000, 'Developer'));

// 1. Get count by department
Integer hrCount = EmployeeUtility.getCountByDepartment(empMap, 'HR');
System.debug('Number of employees in HR: ' + hrCount);

// 2. Get least salaried employee
Employee leastEmp = EmployeeUtility.getLeastSalariedEmployee(empMap);
System.debug('Least salaried employee: ' + leastEmp.employeeName + ' | Salary: ' + leastEmp.salary);

// 3. Print employees by location
EmployeeUtility.printEmployeesByLocation(empMap, 'Bangalore');

// 4. Print max salary by designation
EmployeeUtility.printMaxSalaryByDesignation(empMap);

**/