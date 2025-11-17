public class OddEvenSumCalculator {
    
    public static void calculateSums() {
        Integer oddSum = 0;
        Integer evenSum = 0;
        
        for (Integer i = 1; i <= 10; i++) {
            if (Math.mod(i, 2) != 0) {
                oddSum += i;
                //System.debug('Current OddSum: ' +oddSum);  
            } else {
                evenSum += i;
                //System.debug('Current EvenSum: ' +evenSum);
            }
        }
        
        System.debug('Sum of odd values from 1 to 10 ---- ' + oddSum);  // 25
        System.debug('Sum of even values from 1 to 10 ---- ' + evenSum); // 30
    }
}

/*
OddEvenSumCalculator.calculateSums();
*/