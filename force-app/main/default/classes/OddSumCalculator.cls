public class OddSumCalculator {

    public static void calculateOddSum() {
        Integer oddSum = 0;

        for (Integer i = 1; i <= 10; i++) {
            if (Math.mod(i, 2) != 0) {
                oddSum += i;
                System.debug('Current Sum: ' + oddSum);// 
            }
        }

        System.debug('Sum of odd values from 1 to 10 ---- ' + oddSum);
    }
}

/*
OddSumCalculator.calculateOddSum();

                             Oddsum = i+OddSum    oddSum
		  Math.mod(1,2) = 1      0+1=1               1
		  math.mod(2,2) = 0        -                 -
		  math.mod(3,2) = 3      3+1=4               4
		  math.mod(4,2) = 0        -                 -
		  math.mod(5,2) = 5      5+4=9               9
		  math.mod(6,2) = 0        -                 -
		  math.mod(7,2) = 7      7+9=16              16
		  math.mod(8,2) = 0        -                 -
		  math.mod(9,2) = 9      9+16=25             25
		  math.mod(10,2) = 0       -                 -
*/