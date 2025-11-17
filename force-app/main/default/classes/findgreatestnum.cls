public class findgreatestnum {
    public void greatestnum(integer x ,integer y , integer z ){
        
        
        if (x > y)
        {
            if(x > z)
            {
                System.debug(x+ ' is the Big');
                
            } else
            {
                System.debug(z+ ' is the Big');
            }
        } else
        {
            if(y > z)
            {
                System.debug(y+ ' is the big');
            } else
            {
                System.debug(z+ ' is the big');
            }
        }
    }
    
}