public class EmployeeController {
    public Map<String, Employee> employeeMap { get; set; }
    public String selectedDepartment { get; set; }
    public String selectedLocation { get; set; }

    public EmployeeController() {
        employeeMap = new Map<String, Employee>();
        employeeMap.put('E101', new Employee('IT', 'Chennai', 'E101', 'Arun', 50000, 'Developer'));
        employeeMap.put('E102', new Employee('HR', 'Bangalore', 'E102', 'Priya', 60000, 'HR Manager'));
        employeeMap.put('E103', new Employee('IT', 'Chennai', 'E103', 'Kumar', 30000, 'Tester'));
        employeeMap.put('E104', new Employee('Finance', 'Mumbai', 'E104', 'Rita', 55000, 'Accountant'));
        employeeMap.put('E105', new Employee('IT', 'Bangalore', 'E105', 'Vikram', 90000, 'Developer'));
    }

    public Integer getCountByDept() {
        return EmployeeUtil.countEmployeesByDepartment(employeeMap, selectedDepartment);
    }

    public Employee getLeastSalaried() {
        return EmployeeUtil.findLeastSalariedEmployee(employeeMap);
    }

    public List<Employee> getEmployeesByLocation() {
        List<Employee> result = new List<Employee>();
        for (Employee e : employeeMap.values()) {
            if (e.location == selectedLocation) result.add(e);
        }
        return result;
    }

    public List<Employee> getMaxSalaryByDesignation() {
        return new List<Employee>(EmployeeUtil.getMaxSalaryDesignationMap(employeeMap).values());
    }

    public void dummyAction() {
        // Supports rerender without performing an action
    }
}