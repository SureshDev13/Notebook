/*************************************************************************
@Name: Virtual BankOperation
@author: Suresh
@Date: 04 June 2025
@Description: Virtual class for BankOperation DepositOperation and WithdrawOperation
***************************************************************************/

public virtual class BankOperation {
    // Use protected 
    protected String accountHolderName;
    protected String contactNumber;
    protected integer balance;

    // Constructor
    public BankOperation(String accountHolderName, String contactNumber, integer openingBalance) {
        this.accountHolderName = accountHolderName;
        this.contactNumber = contactNumber;
        this.balance = openingBalance;
    }

    // Method to display basic account info
    public void displayAccountInfo() {
        System.debug('Account Holder: ' + accountHolderName);
        System.debug('Contact Number: ' + contactNumber);
        System.debug('Current Balance: ' + balance);
    }

    // Virtual methods to be overridden in child classes
    public virtual void DepositOperation(Integer amount) {
        System.debug('Deposit method not implemented in base class.');
    }

    public virtual void WithdrawOperation(Integer amount) {
        System.debug('Withdraw method not implemented in base class.');
    }
    
 }


/**
//Deposit
BankOperation depAcc = new BankOperation('Alice Johnson', '9876543210', 1000);
depAcc.displayAccountInfo();
depAcc.DepositOperation(500);

//withdraw
BankOperation withdrawAcc = new BankOperation('Bob', '8888888888', 700);
withdrawAcc.displayAccountInfo();
withdrawAcc.WithdrawOperation(300);
---------------------------------------------------------------------------------
// Deposit 
DepositOperation depositAcc = new DepositOperation('Lara', '9999999999', 1000);
depositAcc.displayAccountInfo();
depositAcc.DepositOperation(500);

// Withdraw 
WithdrawOperation withdrawAcc = new WithdrawOperation('Bob', '8888888888', 700);
withdrawAcc.displayAccountInfo();
withdrawAcc.WithdrawOperation(300); 
**/