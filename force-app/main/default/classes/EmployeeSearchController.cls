public with sharing class EmployeeSearchController {
    @AuraEnabled(cacheable=true)
    public static Student__c getEmployeeDetails(String StudentId) {
        if (String.isBlank(StudentId)) {
            throw new AuraHandledException('Employee ID cannot be blank.');
        }

      Student__c emp = [SELECT Id, Name, Student_Name__c, School_Name__c, City__c, Postal__c
                           FROM Student__c
                           WHERE Name = :StudentId
                          LIMIT 1];
        system.debug(emp);
        return emp;
    }
}