/*************************************************************************
@Name: AbstractDeposit extends AbstractBankOperation
@author: Suresh
@Date: 04 June 2025
@Description: Abstract class for bank operation deposit
***************************************************************************/
public class AbstractDeposit extends AbstractBankOperation {
    public AbstractDeposit(String name, Decimal openingBalance) {
        super(name, openingBalance);
    }

    public override void performOperation(Decimal amount) {
        if (amount > 0) {
            balance += amount;
            System.debug('Deposited: ' + amount);
        } else {
            System.debug('Invalid deposit amount.');
        }
        system.debug('Total Balance ---->' +balance);
    }
}