public class ListReverse {

    public void listReverse(List<Integer> listNumber) {
        System.debug('The given list --------  ' + listNumber);
         
        // Declare the reverse list
        List<Integer> reverseNumber = new List<Integer>();
        // listNumber.reverse();
        
        // Loop through the list in reverse order
        for (Integer i = listNumber.size() - 1; i >= 0; i--) {
            Integer currentNumber = listNumber.get(i);
            reverseNumber.add(currentNumber);
        }

        System.debug('The reverse of the list -----  ' + reverseNumber);
    }
}  



/**
ListReverse obj = new ListReverse();
List<Integer> myList = new List<Integer>{ 10, 20, 30, 40, 50 };
obj.listReverse(myList);
***/