public class EvenoddNumbers {
    
    
    public void evenoddValues()
    {
        List<integer> NValue = new List<integer>{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
        List<integer> evenValue = new list<integer>();
        List<integer> oddValue = new list<integer>();
        system.debug('List Value -------->  '+NValue);
        
        For (integer i=0; i < NValue.size(); i++)
        {
            
            if(math.mod(NValue[i],2)==0)
            {
                integer evenNumber = NValue.get(i);
                evenValue.add(evenNumber);
            }
            else
            {
                integer oddNumber= NValue.get(i);
                oddValue.add(oddNumber);
            }
        }
        System.debug('Even Numbers in the list -----  '+evenValue); 
        System.debug('oddNumber in the list -----  '+oddValue);
    }
}

/*
EvenoddNumbers obj = new EvenoddNumbers();
obj.evenoddValues();
*/