public class apexacct {
    
    public static wrap returnacctid(){
        Account acc=new Account();
        acc.Name='new account';
        insert acc;
        
        contact ct= new contact();
        ct.LastName='Relationship';
        ct.AccountId=acc.Id;
        insert ct;
        
        wrap wr = new wrap();
        wr.ac=acc.id;
        wr.cc=ct.id;
        return wr;
    }
    
    public class wrap{
        public id ac;
        public id cc;
    }

}

//system.debug(apexaccct.returnaccid());