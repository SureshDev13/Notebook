public class NegativeValueInList {

    public void negativeValue(List<Integer> negativeNum) {
        System.debug('Entered List ------  ' + negativeNum);

        // Create a new list to hold the negative numbers
        List<Integer> negativeOnly = new List<Integer>();

        for (Integer i = 0; i < negativeNum.size(); i++) {
            if (negativeNum[i] < 0) {
                negativeOnly.add(negativeNum[i]);
            }else {
                system.debug('No Negative number in the List');
            }                
                }

        System.debug('The Negative Numbers in the List ------ ' + negativeOnly);
        System.debug('The Count of Negative Numbers in the List -------  ' + negativeOnly.size());
    }
}


/*
//inputvalue passing

NegativeValueInList obj = new NegativeValueInList();
List<Integer> inputList = new List<Integer>{-2,-3,-7,-8,0,1,2,-5,-6,7};
obj.negativeValue(inputList);
*/