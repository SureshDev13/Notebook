/*************************************************************************
@Name: AddDateTime Class
@author: Suresh
@Date: 13 June 2025
@Description: Calculate the difference in hours, minutes and display the result as 
				below 
                       Number of days: 2 
                       Number of hours: 3 
                       Number of Minutes:30                     
***************************************************************************/
public class DifferenceTimeCalculator {

    public static void calculateDifference() {
        // Start with current datetime
        Datetime startDateTime = Datetime.now();

        // End datetime after adding 2 days, 3 hours, 30 minutes
        Datetime endDateTime = startDateTime.addDays(2)
                                            .addHours(3)
                                            .addMinutes(30);

        // Total difference in minutes
        Long totalMinutes = (endDateTime.getTime() - startDateTime.getTime()) / (1000 * 60);

        // Break down into days, hours, and minutes using Math.mod
        Integer days = (Integer)(totalMinutes / (24 * 60));
        Integer hours = (Integer)((Math.mod(totalMinutes, 24 * 60)) / 60);
        Integer minutes = (Integer)Math.mod(totalMinutes, 60);

        // Debug output
        System.debug('--- Time Difference ---');
        System.debug('Days   : ' + days);
        System.debug('Hours  : ' + hours);
        System.debug('Minutes: ' + minutes);
    }
}

/**
DifferenceTimeCalculator.calculateDifference();
**/