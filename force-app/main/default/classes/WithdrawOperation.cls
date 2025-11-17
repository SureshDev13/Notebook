/*************************************************************************
@Name: Extends  WithdrawOperation with BankOperation
@author: Suresh
@Date: 04 June 2025
@Description: Extend class for BankOperation WithdrawOperation
***************************************************************************/

public class WithdrawOperation extends BankOperation {

    public WithdrawOperation(String accountHolderName, String contactNumber, integer openingBalance) {
        super(accountHolderName, contactNumber, openingBalance);
    }

    public override void WithdrawOperation(integer amount) {
        if (amount <= 0) {
            System.debug('Withdraw amount must be greater than zero.');
            return;
        }
        if (amount > balance) {
            System.debug('Insufficient balance.');
            return;
        }
        balance -= amount;
        System.debug('Withdrawn: ' + amount);
        System.debug('New Balance: ' + balance);
    }
}