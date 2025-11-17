/*************************************************************************
@Name: Abstractwithdraw extends AbstractBankOperation
@author: Suresh
@Date: 04 June 2025
@Description: Abstract class for bank operation Withdraw
***************************************************************************/

public class AbstractWithdraw extends AbstractBankOperation {
    public AbstractWithdraw(String name, Decimal openingBalance) {
        super(name, openingBalance);
    }

    public override void performOperation(Decimal amount) {
        if (amount > 0 && amount <= balance) {
            balance -= amount;
            System.debug('Withdrawn: ' + amount);
        } else {
            System.debug('Invalid or insufficient balance for withdrawal.');
        }
        system.debug('Total Balance ---->' +balance);
    }
}