public class OppAccountSearch {


    // Public static method to search Accounts and Opportunities
    public static List<List<SObject>> searchAccountsAndOpportunities(String searchKey) {
       
        // Using SOSL to search Accounts with Rating 'Hot' or Opportunities matching name
        List<List<SObject>> searchResults = [FIND :searchKey IN Name Fields
                                             RETURNING 
                                                 Account(Name, Rating WHERE Rating = 'Hot'),
                                                 Opportunity(Name WHERE Name LIKE :('%' + searchKey + '%'))];
        return searchResults;
    }


}
/**
List<List<SObject>> results = OppAccountSearch.searchAccountsAndOpportunities('Test');

List<Account> accList = (List<Account>) results[0];
List<Opportunity> oppList = (List<Opportunity>) results[1];

System.debug('--- Accounts with Rating Hot ---');
for (Account acc : accList) {
    System.debug(acc);
}

System.debug('--- Opportunities Matching Name ---');
for (Opportunity opp : oppList) {
    System.debug(opp);
}

**/