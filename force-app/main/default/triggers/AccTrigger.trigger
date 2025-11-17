// program to delete account with as active contact
trigger AccTrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) 
{
     // dont allow to delete account if it has active contact 
     // update, delete  
     
     switch on Trigger.operationType 
     { 
         when BEFORE_DELETE 
         { 
             Set<Id> accId=new Set<Id>(); 
             for (Account acc:Trigger.old) 
             {
                 accId.add(acc.Id); //3 accounts - 2 accouonts may be ref in the contact 
              } 
             
             //1- get accounts which are referred in the contact object 
            
             
             List<Account> accList= [Select Id, Name from Account where Id in (Select AccountId from Contact) and Id in : accId];
             
             for (Account acc:acclist) 
             { 
                 Trigger.oldMap.get (acc.Id).addError('Unable to delete with contact');
             }  
         }
     }
             
}