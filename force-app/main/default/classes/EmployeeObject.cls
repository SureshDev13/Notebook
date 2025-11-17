/**
DESCRIPTION: Create a Class to represent Employee Object
(Class level variables should be used for fields in the Object)
1. Create functions in the respective classes to insert, update, delete, search records. 
(Field values should be passed as Parameter)
1.1 While Inserting new employee, if name already exists message should be displayed
1.2 While deleting a record if no record exists display message
1.3 While insert, update, delete display number of records processed
1.4 When an Employee created without Position make Other as default
1.5 When an Employee created, if position other than Head Department
Salary should not be greater than 80,000. (Display proper message)
2. Create a function to find maximum salary for a given position (Position passed as parameter)
3. Create a function to display available positions maximum and minimum Salary
---------------------------------------------------------------------------------**/
public class EmployeeObject {
    
    /*
     * Insert a new employee
     * 1.1 While Inserting new employee or department, if name already exists message should be displayed
     */
    public static void insertEmployee(String empName, String position, Integer salary, Id deptId) {
        position = String.isBlank(position) ? 'Other' : position;
        
        // Check if name already exists
        Integer count = [SELECT COUNT() FROM Employee__c WHERE Employee_Name__c = :empName];
        Boolean nameExists = count > 0;
        
        // Check salary condition
        Boolean invalidSalary = position != 'Head Department' && salary > 80000;
        
        if (nameExists || invalidSalary) {
            if (nameExists) {
                System.debug('Employee already exists: ' + empName);
            } else {
                System.debug('Only Head Department can have salary > 80,000');
            }
            return;
        }
        
        List<Employee__c> empList = new List<Employee__c>();
        Employee__c emp = new Employee__c(
            Employee_Name__c = empName,
            Position__c = position,
            Salary__c = salary,
            Department__c = deptId
        );
           empList.add(emp);
        
         try
        {
            insert empList;
            System.debug('Employee inserted: ' + empList.size()); //1.3 display Insert number of records processed
        }
        catch(exception exe)
        {
            system.debug(exe);
        }  
    }

    /*
     * Delete employee
     * 1.2 While deleting a record if no record exists display message
     */
    
    Public static void deleteEmployee(String empName) {
        List<Employee__c> emps = [
            SELECT Id, Name, Position__c, Salary__c
            FROM Employee__c
            WHERE Name = :empName
        ];
        
        if (emps.isEmpty()) {
            System.debug('No employee found: ' + empName);
            return;
        }
        
        delete emps;
        System.debug('Deleted: ' + emps.size()); //1.3 display Deleted number of records processed
    }






}


/**

**/