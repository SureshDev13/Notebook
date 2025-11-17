public class BankAccount {
    
    public integer CurrentBalance = 50000, DAmount, WAmount;
    
    public void BankDeposit(integer x){
        
        system.debug('Entered Deposit Amount ------ ' +x);
        DAmount = CurrentBalance + x ;
        CurrentBalance = DAmount;
        system.debug('Current Balance ---------------- '+CurrentBalance);
       
      
    }
    
    public void BankWithdrawal(integer y){
        
        system.debug('Entered Withdrawal Amount ------ ' +y);
        WAmount = CurrentBalance - y;
        CurrentBalance = WAmount;
        system.debug('Current Balance ---------------- '+CurrentBalance);
       
        
    }
        
}