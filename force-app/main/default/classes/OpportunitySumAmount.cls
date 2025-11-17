public class OpportunitySumAmount {
    
    public static Decimal getAmountSumByStage(String stageName) {
        
        Decimal totalAmount = 0;
        
        // Fetch opportunities with the given stage
        List<Opportunity> oppList = [
            SELECT Amount 
            FROM Opportunity 
            WHERE StageName = :stageName
        ];
        
        // Loop through and sum the amounts, checking for null
        for (Opportunity opp : oppList) {
            if (opp.Amount != null) {
                totalAmount += opp.Amount;
            }
        }
        
        // Display or return the result
        System.debug('Total Amount for Stage ' + stageName + ' is: ' + totalAmount);
        return totalAmount;
    }
}

/**
OpportunityStageCount.countOpportunitiesByStage('Prospecting');
**/