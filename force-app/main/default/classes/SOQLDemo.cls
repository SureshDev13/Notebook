public class SOQLDemo {
    
    public static void displayAllAccounts(){
        
       /* integer countOfAccount=[
            					select
            					COUNT()
            					FROM Account
        						];
        system.debug(countOfAccount);
        */
        
        /*List<Account> lstAccount=[
            					select
            					COUNT(Id),Name
            					FROM Account
             					GROUP BY NAME
        						];
         *AggregateResult is a function which return a aggregate values
         */ 
        List<AggregateResult> lstAccount=[                   
            					select
            					COUNT(Id) CountofID,Name   //COUNT(Id),Name -- system.debug(a.get('expr0')); //Alias name 'CountofID'
            					FROM Account
             					GROUP BY NAME
        						];
        for (AggregateResult a:lstAccount)
        {
            system.debug(a);
            //system.debug(a.get('expr0'));
            system.debug(a.get('CountofID'));
            system.debug(a.get('Name'));
        }
         
    }
    
}