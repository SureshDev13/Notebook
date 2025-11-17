/*************************************************************************
@Name: Display Opportunity Class
@author: Suresh
@Date: 16 June 2025
@Description: To display all the opportunites 
***************************************************************************/
public class DisplayOpportunites {

    Public static void ShowAllOpportunites(){
        
        List<Opportunity> oppList = [Select Id, Name, StageName, CloseDate, Amount From opportunity];
        
        for(Opportunity opp:oppList){
            
            System.Debug('Opportunity Name---->   '+opp.Name);
            System.Debug('Opportunity StageName---->   '+opp.StageName);
            System.Debug('Opportunity CloseDate---->   '+opp.CloseDate);
            System.Debug('Opportunity Amount---->   '+opp.Amount);
            System.Debug('-----------------------------------------');
        }
        
    }
}

/**
DisplayOpportunites.ShowAllOpportunites();
**/