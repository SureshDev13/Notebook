@isTest
public class AccTriggerTest {
    
    @isTest static void TestAccount_DeletewithContact() 
    { 
        // Account record, contact record 
        // Test - Delete 
       
        Account acc=new Account(name='Test Account'); 
        insert acc;
        
        Contact con=new Contact(); 
        con.LastName='Test Contact'; 
        con.AccountId=acc.Id; 
        insert con;
        
        Test.startTest();
        // delete -- Apex dml operation
        //  Database.delete 
        
       Database.DeleteResult dr=Database.delete(acc,false);
        
        List<Database.Error> ErrList = dr.getErrors();
  
        Test.stopTest();
        //errlist[0] - Unable to delete with contact
        
        System.assertEquals('Unable to delete with contact',errList[0].getMessage());
    }

}