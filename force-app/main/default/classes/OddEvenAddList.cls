public class OddEvenAddList {

    
    List<Integer> NValue;     //input 
    List<Integer> evenValue; // to store the even number
    List<Integer> oddValue;  // to store the odd number

    // Constructor 
    public OddEvenAddList(List<Integer> inputList) {
        this.NValue = inputList;
        this.evenValue = new List<Integer>();
        this.oddValue = new List<Integer>();

        // for loop to split values
        for (Integer i = 0; i < NValue.size(); i++) {
            if (Math.mod(NValue[i], 2) == 0) {
                evenValue.add(NValue[i]);
            } else {
                oddValue.add(NValue[i]);
            }
        }
    }

    // Method to print even numbers and their sum
    public void printEvenValues() {
        Integer sumEven = 0;

        // Loop to calculate sum of even numbers
        for (Integer num : evenValue) {
            sumEven += num;
        }

        System.debug('Even Numbers in the list ----- ' + evenValue);
        System.debug('Sum of Even Numbers ----- ' + sumEven);
    }

    // Method to print odd numbers and their sum
    public void printOddValues() {
        Integer sumOdd = 0;

        // Loop to calculate sum of odd numbers
        for (Integer num : oddValue) {
            sumOdd += num;
        }

        System.debug('Odd Numbers in the list ----- ' + oddValue);
        System.debug('Sum of Odd Numbers ----- ' + sumOdd);
    }
}

/**
List<Integer> inputList = new List<Integer>{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
OddEvenList obj = new OddEvenList(inputList);
obj.printEvenValues();
obj.printOddValues();
**/