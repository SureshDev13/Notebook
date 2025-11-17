/*************************************************************************
@Name: OpportunityAmount Class
@author: Suresh
@Date: 16 June 2025
@Description: Display all opportunity greater than amount 
(create a function with amount as parameter)
***************************************************************************/
public class OpportunityAmount {

    Public static List<opportunity> getOpportunityAmount(Decimal UserAmount){
        List<opportunity> oppList = [Select 
                                     Id, Name, Amount, StageName, CloseDate 
                                     FROM Opportunity
                                     Where Amount>:UserAmount AND StageName = 'Closed Won' // logical symbols cannot be used 
                                    ];
        return oppList;
    }
}
/**
List<opportunity> Result = OpportunityAmount.getOpportunityAmount(20000);
for(Opporunity opp:result){
system.debug('Opportuntiy Name --  '+opp.Name + 'StageName -- Closed Won ---> Amount -- '+opp.Amount);
}
**/