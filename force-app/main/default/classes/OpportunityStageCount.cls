/*************************************************************************
@Name:Opportunity Stage Count Class
@author: Suresh
@Date: 16 June 2025
@Description: To count number of opportunity parameter as stagename
***************************************************************************/
public class OpportunityStageCount {
    
    // Method that accepts a stage name and counts matching opportunities
    public static void countOpportunitiesByStage(String inputStageName) {
        
        // SOQL to count opportunities with the given stage name
        List<AggregateResult> results = [SELECT StageName, COUNT(Id) total
                                         FROM Opportunity
                                         WHERE StageName = :inputStageName
                                         GROUP BY StageName
        ];

        // Check if any results were returned
        if (!results.isEmpty()) {
            AggregateResult ar = results[0];
            String stage = (String) ar.get('StageName');
            Integer count = (Integer) ar.get('total');
            System.debug('Stage: ' + stage + ' | Count: ' + count);
        } else {
            System.debug('No opportunities found for stage: ' + inputStageName);
        }
    }
}

/**
OpportunityStageCount.countOpportunitiesByStage('Prospecting');
Qualification, Needs Analysis, Value Proposition, Negotiation/Review, Closed Won, Closed Lost
**/