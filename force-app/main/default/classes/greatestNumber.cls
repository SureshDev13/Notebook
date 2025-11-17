/*********************************
@NAME           Greatest Number  
@Author         Suresh
@DATE           16/05/2025
@Description    To find the greatest among three number 
***********************************/
public class greatestNumber {
    public void greatestNum(Integer x, Integer y, Integer z) {
       System.debug('\nX value ---> ' + x + '\nY value ---> ' + y + '\nZ value ---> ' + z);
        if (x > y && x > z) {
            System.debug(x + ' is the big');
        } else if (y > x && y > z) {
            System.debug(y + ' is the big');
        } else {
            System.debug(z + ' is the big');
        }
    }
}
/* 
Trinary Operator
Integer max = (x > y) ? ((x > z) ? x : z) : ((y > z) ? y : z);
system.Debug('Greatest Number among three digits ----->  ' +max);
*/


/* Anonymous 
greatestNumber num = new greatestNumber();
num.greatestNum(10,50,20);
*/