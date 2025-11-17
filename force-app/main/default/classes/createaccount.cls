public class createaccount {
    
    public static Account insertNewAccount(String name) {
        Account a = new Account();
        a.Name = name;
        Insert a;
        return a;
    }
    public static Contact insertNewContact(String name) {
        Contact newcontact = new Contact();
        newcontact.LastName = name;
        Insert newcontact;
        return newcontact;
    }
}