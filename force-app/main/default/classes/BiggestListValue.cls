public class BiggestListValue {

    // Method to find the maximum value in a list
       public void findMaxValue(List<Integer> valueList)
    
    //public void findMaxValue() 
    {
        //List<Integer> valueList = new List<Integer>{10,50,30,20};// Initalize the value inside list by default     
       
        system.debug('List Values: ' + valueList);

        // Initialize max value to the first element
        Integer maxValue = valueList[0];

        // Loop through the list to find the maximum value
        for (Integer i = 1; i < valueList.size(); i++) {
            if (valueList[i] > maxValue) {
                maxValue = valueList[i];
            }
        }

        System.debug('The maximum value is: ' + maxValue);
    }
}

/*
BiggestListValue obj = new BiggestListValue();
obj.findMaxValue();

//inputvalue passing 
BiggestListValue obj = new BiggestListValue();
List<Integer> inputList = new List<Integer>{40, 75, 23, 89, 60};
obj.findMaxValue(inputList);
*/