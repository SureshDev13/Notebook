/*************************************************************************
@Name: AbstractBankOperation
@author: Suresh
@Date: 04 June 2025
@Description: Abstract class for bank operation deposit and withdrawal
***************************************************************************/
public abstract class AbstractBankOperation {
    public String accountHolderName;
    public Decimal balance;

    // Constructor
    public AbstractBankOperation(String name, Decimal openingBalance) {
        accountHolderName = name;
        balance = openingBalance;
    }

    // Method to display account info
    public void displayInfo() {
        System.debug('Account Holder: ' + accountHolderName);
        System.debug('Current Balance: ' + balance);
    }

    // Abstract methods
    public abstract void performOperation(Decimal amount);
}


/**
// Deposit 
AbstractDeposit depositAcc = new AbstractDeposit('Naruto', 1000);
depositAcc.displayInfo();
depositAcc.performOperation(500);

// Withdraw 
AbstractWithdraw depositAcc = new AbstractWithdraw('Naruto', 1000);
depositAcc.displayInfo();
depositAcc.performOperation(500);
**/