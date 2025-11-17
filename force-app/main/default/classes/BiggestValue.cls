public class BiggestValue{
    
    
        public void listValue()
       {
          List<integer> Value = new List<integer>(); 
            value.add(10);
            value.add(30);
            value.add(50);
            value.add(20);
           system.debug('List Value -------->  '+Value);
          
           integer maxvalue = value[0];  //integer maxvalue = math.max(value[0],50); // Store the biggest value
           For (integer i =0; i<value.size(); i++)   // Size = 4
        {
            
            if( value[i] > maxvalue)
                maxvalue = value[i];             
        }    
           system.debug('the max value is------> '+maxvalue);
       }
      
}

/*
BiggestListValue obj = new BiggestListValue();
obj.findMaxValue();
**/