public class AtmOperation {
    public static Integer initialBalance = 50000;
    public static Integer DAmount, WAmount;

    public static void inputValue(Integer x, Integer choice) {
        system.debug('Account Initial Balance -----------'+initialBalance);
        switch on choice {
            when 1 {
                // Deposit
                System.debug('Deposit Amount ------ ' + x);
                DAmount = initialBalance + x;
                System.debug('Total Amount in Account ---------------- ' + DAmount);
            }
            when 2 {
                
                // Input From user
                System.debug('Withdrawal Amount ------ ' + x);
                
                //Checking the amount is zero or more than initialBalance
                if (x <= 0) {
                    System.debug('Invalid withdrawal amount. Amount must be greater than zero.');
                    return;
                }
                
                // Insufficient Balance 
                if (x > initialBalance) {
                    System.debug('Insufficient Balance! Current Balance: ' + initialBalance);
                    return;
                }
                
                // Withdrawal Calculation
                WAmount = initialBalance - x;
                System.debug('Total Amount in Account ---------------- ' + WAmount);
            }
            
            //Invalid Choice
            when else {
                System.debug('Invalid choice. Please enter 1 for deposit or 2 for withdrawal.');
            }
        }
    }
}


/*
AtmOperation.inputValue(5000, 1); // Deposit 5000
AtmOperation.inputValue(10000, 2); // Withdraw 10000
AtmOperation.inputValue(0, 2); // withdraw amount is 0
AtmOperation.inputValue(60000, 2); // Try withdrawing more than balance
AtmOperation.inputValue(60000, 3);// Invalid Choice
*/