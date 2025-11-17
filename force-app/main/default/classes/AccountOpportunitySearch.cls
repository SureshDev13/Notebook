public class AccountOpportunitySearch {
    
    public static List<List<SObject>> searchAccountAndOpportunity(string searchString){
        
        List<List<SObject>> finalResult = new List<List<SObject>>();
        
        //Get Account Rating is Hot
        List<Account> hotAccounts = [SELECT Id, Name, Rating
                                     From Account
                                     Where Rating = 'Hot'
                                     ];
        
        //Get Opportunity Names using search string
        List<Opportunity> matchingOpportunities =[SELECT Id, Name, StageName, AccountId
                                                 From Opportunity
                                                 Where Name Like:('%'+ SearchString + '%')
                                                 ]; 
         
        //Add both list in FinalResult
        finalResult.add(hotAccounts);
        finalResult.add(matchingOpportunities);
        
        Return finalResult;
    }

}

/**

List<List<SObject>> results = AccountOpportunitySearch.searchAccountsAndOpportunity('Test');

// Debug accounts
System.debug('Accounts with Rating "Hot":');
for (SObject acc : results[0]) {
    System.debug(acc);
}

// Debug opportunities
System.debug('Opportunities matching search string:');
for (SObject opp : results[1]) {
    System.debug(opp);
}

**/