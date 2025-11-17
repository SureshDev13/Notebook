trigger updateopportunity on Opportunity (before insert, before update) {
  for(opportunity opp: trigger.new){
        
        if(opp.StageName=='Closed Won'){
            
            opp.Actual_Closed_Date__c= system.now();
        }
        
    }

}