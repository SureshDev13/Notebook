public class OpportunityMapLst {
    
    public static void displayClosedOpportunities(){
        
        //Create the Map
        Map<id, List<Opportunity>> accountOppMap = new Map<id, List<Opportunity>>();
        
        
        //Fetch Opportunities 'Closed Won' and 'Closed Lost'
        List<Opportunity> oppList = [Select Id, Name, StageName, AccountID
                                     From Opportunity
                                     Where StageName IN ('Closed Won','Closed Lost') 
                                     And AccountId != null];
        
      //Group Opportunites with AccountId into the Map
        For (opportunity opp: oppList){
            if(!accountOppMap.containsKey(opp.AccountId)){
                accountOppMap.put(opp.AccountId, new List<Opportunity>());
            }
            accountOppMap.get(opp.AccountId).add(opp);
        }
        
       //Display all accounts and opportunity using get Function
        for (Id accId:accountOppMap.keyset()){
            System.debug('--- Account Id: ' + accId + ' ---');
            List<Opportunity> opps = accountOppMap.get(accId);
            for(Opportunity opp: opps){
                System.debug('Opportunity Name: ' + opp.Name + ' | Stage: ' + opp.StageName);
            }
        }
    }

}
/**
OpportunityMapLst.displayClosedOpportunities();
**/