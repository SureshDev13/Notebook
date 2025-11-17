/*************************************************************************
@Name: Extends DepositOperation with BankOperation
@author: Suresh
@Date: 04 June 2025
@Description: Extend class for BankOperation DepositOperation
***************************************************************************/

public class DepositOperation extends BankOperation {

    public DepositOperation(String accountHolderName, String contactNumber, integer openingBalance) {
        super(accountHolderName, contactNumber, openingBalance);
    }

    public override void DepositOperation(integer amount) {
        if (amount <= 0) {
            System.debug('Deposit amount must be greater than zero.');
            return;
        }
        balance += amount;
        System.debug('Deposited: ' + amount);
        System.debug('New Balance: ' + balance);
    }
}