public class AccountTriggerHandler {
    
    public static void run(){
        
        switch on trigger.operationtype
        {
            when Before_Insert
            {
                
            }
             when After_Insert
            {
                
            }
             when Before_update
            {
                
            }
             when After_update
            {
               //1. loop all account records -- Trigger.new, Trigger.newmap -- Active
               //2. update related employee (get employees, update employees)
               
                list<account> accountList = Trigger.new;
                /*for(Account acc:accountList)
                {
                    if(acc.Active__c == 'Yes')
                    {
                        List<Employee__c> empList=[select Id, Name from Employee__c where Account__c=:acc.Id];
                        for(Employee__c emp:empList)
                        {
                           emp.Contact_Number__c=acc.Phone;  
                        }
                        update empList;
                    }
                }*/
                
                //set  -- Collection of Account Id
                
                Set<Id> accId = new Set<Id>();
                for(Account acc:accountList)
                {
                    accId.add(acc.Id);
                }
             
               
                
                
                List<Employee__c> empList=[select Id, Name from Employee__c where Account__c in:accId];
                
                /*for(Account acc:accountList)
                {
                    for(Employee__c emp: empList)
                    {
                       if(acc.Active__c == 'Yes' && acc.Id==emp.Account__c) 
                       {
                         emp.Contact_Number__c=acc.Phone;   
                       }
                     }                    
                   }*/
                
                 Map<Id,Account> accountMap = (Map<Id,Account>)Trigger.newMap;
                 for(Employee__c emp: empList)
                    {
                        if(accountMap.get(emp.Account__c).Active__c == 'Yes')
                        {
                            emp.Contact_Number__c= accountMap.get(emp.Account__c).phone;
                        }
                       /*if(acc.Active__c == 'Yes' && acc.Id==emp.Account__c) 
                       {
                         emp.Contact_Number__c=acc.Phone;   
                       }*/
                        
                        
                     }    
                
                
                      update empList;
                } 
            
             when Before_Delete
            {
                
            }
        }
    }

}