/*************************************************************************
@Name:Opportunity Duplicate Names
@author: Suresh
@Date: 20 June 2025
@Description: Create a Class to Search Objects in your Org
1.1 Create a Function to search records.
This function should receive object name and fields list from anonymous window.
Parameter:
•	Object Name
•	Fields Name (List)
Output:
•	Records with fields from Object passed as parameter
-------------------------------------------------------------------------------------
2.2 Function to search records in an object using criteria (Filter).
This function should receive object name and fields list, search field, operator, 
value from anonymous window.

Parameter:
Object Name
Fields Name (List)
Search Field
Operator
Value

Examples:
searchRecords('Employee__C', {'Name','Position'}, 'Salary', '>', '1000');
searchRecords('Employee__C', {'Name','Position'}, 'Name', '=', 'John');
***************************************************************************/
public class SearchObject {
    
    //1.1 Function: Search records with just Object Name and Field Names
    public static void searchRecords(String objectName, List<String> fieldNames) {
        if (String.isBlank(objectName) || fieldNames.isEmpty()) {
            System.debug('Invalid input.');
            return;
        }
        
        String fields = String.join(fieldNames, ',');
        String query = 'SELECT ' + fields + ' FROM ' + objectName;
        system.debug(query);
        
        List<SObject> records = Database.query(query);
        
        for (SObject record : records) {
            String output = '';
            for (String field : fieldNames) {
                output += field + ': ' + String.valueOf(record.get(field)) + ' | ';
            }
            System.debug(output);
        }
    }
    // 2.2 Function: Search with filter condition
    public static void FilterRecords(String objectName, List<String> fieldNames, String filterField, String operator, String value) {
        
        //Checking the Input for ObjectName, FieldName, Operator 
        if (String.isBlank(objectName) || fieldNames.isEmpty() || String.isBlank(filterField) || String.isBlank(operator)) {
            System.debug('Invalid input.');
            return;
        }

        String fields = String.join(fieldNames, ',');
        
        // Handle Value Type (String or Number)
        Boolean isNumeric = Pattern.matches('^[0-9.]+$', value);
        String condition = filterField + ' ' + operator + ' ' + (isNumeric ? value : '\'' + value + '\'');

        String query = 'SELECT ' + fields + ' FROM ' + objectName + ' WHERE ' + condition;
        
        //system.debug(query);
        
        List<SObject> records = Database.query(query);
        
        //Loop and Print Records
        for (SObject record : records) {
            String output = '';
            for (String field : fieldNames) {
                output += field + ': ' + String.valueOf(record.get(field)) + ' | ';
            }
            System.debug(output);
        }
    }
    
}

/**
SearchObject.searchRecords(
    'Account',
    new List<String>{'Name', 'Rating'});


SearchObject.FilterRecords(
    'Account',
    new List<String>{'Name', 'Rating'},
    'Name',
    '=',
    'DEMO TEST');

SearchObject.searchRecords(
    'Employee__c',
    new List<String>{'Employee_Name__c', 'Salary__c' , 'Position__c'});


SearchObject.FilterRecords(
    'Employee__c',
    new List<String>{'Employee_Name__c', 'Position__c'},
    'Employee_Name__c',
    '=',
    'John');

SearchObject.FilterRecords(
    'Employee__c',
    new List<String>{'Employee_Name__c', 'Position__c'},
    'Salary__c',
    '>',
    '1000');

**/