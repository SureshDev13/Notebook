public class WithdrawInterface implements BackOperationInterface {
    private String accountHolderName;
    private Decimal balance;

    public WithdrawInterface(String name, Decimal openingBalance) {
        this.accountHolderName = name;
        this.balance = openingBalance;
    }

    public void performOperation(Decimal amount) {
        if (amount <= balance) {
            balance -= amount;
            System.debug('Withdrawn: ' + amount);
        } else {
            System.debug('Insufficient Balance');
        }
        System.debug('Updated Balance: ' + balance);
    }

    public void generateStatement() {
        System.debug('Withdrawal Statement: ' + accountHolderName + ' has balance: ' + balance);
    }

    public void displayInfo() {
        System.debug('Account Holder: ' + accountHolderName);
        System.debug('Current Balance: ' + balance);
    }
}