public class addacc {
    public static void add(string a , integer b){
        for (integer i=0; i<=b ; i++){
            Account acc = new Account();
            acc.Name = a;
            insert acc;
        }
    }

}

//list<account>acclist = new list <account>();
//acclist=[SELECT Id, Name, BillingState, Type FROM Account];
//system.debug('acclist---->'+acclist);