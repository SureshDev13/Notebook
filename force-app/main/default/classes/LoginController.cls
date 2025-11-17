public with sharing class LoginController {
    @AuraEnabled
    public static Student__c login(String userName, String password) {
        // Authenticate user by querying User object
        List<User> users = [
            SELECT Id, Username, Email
            FROM User
            WHERE Username = :userName
            LIMIT 1
        ];

        if (users.isEmpty()) {
            throw new AuraHandledException('Invalid username.');
        }

        User u = users[0];

        // ⚠️ NOTE: Salesforce does not allow password verification in Apex
        // This is a simulation only. Real login must go through standard login or SSO.

        // Fetch the student record
        List<Student__c> studentList = [
            SELECT Id, Name, Department__c, User__c, User__r.Name, User__r.Email
            FROM Student__c
            WHERE User__c = :u.Id
            LIMIT 1
        ];

        if (studentList.isEmpty()) {
            throw new AuraHandledException('No student record found for this user.');
        }

        return studentList[0];
    }
}