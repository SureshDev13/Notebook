public class ReverseList {
    
    public void listReverse()
    {
        list <integer> listNumber = new list<integer>{1,2,3,4,5,6,7,8,9,0};
        list <integer> reverseNumber = new list <integer>();
        system.debug('The given list --------  ' +listNumber);
           
        for(integer i = listNumber.size()-1; i>=0 ; i--)
        {
            integer reverseValue = listNumber.get(i);
            reverseNumber.add(reverseValue);
        }
       system.debug('The reverse of the list -----  ' +reverseNumber); 
      } 
   }