/*************************************************************************
@Name: Interface for DepositeInterface
@author: Suresh
@Date: 04 June 2025
@Description: Interface for Deposit BankOperation  
***************************************************************************/

public class DepositeInterface implements BackOperationInterface {
    private String accountHolderName;
    private Decimal balance;

    public DepositeInterface(String name, Decimal openingBalance) {
        this.accountHolderName = name;
        this.balance = openingBalance;
    }

    public void performOperation(Decimal amount) {
        balance += amount;
        System.debug('Deposited: ' + amount);
        System.debug('Updated Balance: ' + balance);
    }

    public void generateStatement() {
        System.debug('Deposit Statement: ' + accountHolderName + ' has balance: ' + balance);
    }

    public void displayInfo() {
        System.debug('Account Holder: ' + accountHolderName);
        System.debug('Current Balance: ' + balance);
    }
}