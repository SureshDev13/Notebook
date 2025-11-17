/*************************************************************************
@Name:Account Rating Count Class
@author: Suresh
@Date: 20 June 2025
@Description: Map to Store Account Rating and Record Count using Aggregate Query
***************************************************************************/
public class AccountRatingCount {
    
    public static void getAccountRatingCount() {
        
        Map<String, Integer> ratingCountMap = new Map<String, Integer>();

        // Aggregate query to count records by Rating
        List<AggregateResult> results = [
            SELECT Rating, COUNT(Id) total
            FROM Account
            Where Rating!=NULL
            GROUP BY Rating
        ];

        for (AggregateResult ar : results) {
            String rating = (String) ar.get('Rating');
            Integer count = (Integer) ar.get('Total');
            ratingCountMap.put(rating, count);
        }

        // Debug output
        for (String rating : ratingCountMap.keySet()) {
            System.debug('Rating: ' + rating + ' | Count: ' + ratingCountMap.get(rating));
        }
    }
}

/**
 AccountRatingCount.getAccountRatingCount();
**/