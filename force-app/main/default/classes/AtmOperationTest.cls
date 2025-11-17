@isTest
public class AtmOperationTest {

    @isTest
    static void testDepositOperation() {
        Integer depositAmount = 10000;
        Integer choice = 1; // Deposit

        Test.startTest();
        AtmOperation.inputValue(depositAmount, choice);
        Test.stopTest();

        // Validate deposit calculation
        System.assertEquals(60000, AtmOperation.DAmount, 'Deposit amount calculation is incorrect');
    }

    @isTest
    static void testWithdrawalOperationValid() {
        Integer withdrawAmount = 15000;
        Integer choice = 2; // Withdraw

        Test.startTest();
        AtmOperation.inputValue(withdrawAmount, choice);
        Test.stopTest();

        // Validate withdrawal calculation
        System.assertEquals(35000, AtmOperation.WAmount, 'Withdrawal amount calculation is incorrect');
    }

    @isTest
    static void testWithdrawalInvalidAmountZero() {
        Integer withdrawAmount = 0;
        Integer choice = 2; // Withdraw

        Test.startTest();
        AtmOperation.inputValue(withdrawAmount, choice);
        Test.stopTest();

        // No change in WAmount expected because invalid input
        System.assertEquals(null, AtmOperation.WAmount, 'WAmount should not be set for invalid withdrawal');
    }

    @isTest
    static void testWithdrawalInsufficientBalance() {
        Integer withdrawAmount = 60000;
        Integer choice = 2; // Withdraw

        Test.startTest();
        AtmOperation.inputValue(withdrawAmount, choice);
        Test.stopTest();

        // No change in WAmount expected because of insufficient balance
        System.assertEquals(null, AtmOperation.WAmount, 'WAmount should not be set when balance is insufficient');
    }

    @isTest
    static void testInvalidChoice() {
        Integer amount = 1000;
        Integer choice = 3; // Invalid Choice

        Test.startTest();
        AtmOperation.inputValue(amount, choice);
        Test.stopTest();

        // Ensure neither DAmount nor WAmount is changed
        System.assertEquals(null, AtmOperation.DAmount, 'DAmount should not be set for invalid choice');
        System.assertEquals(null, AtmOperation.WAmount, 'WAmount should not be set for invalid choice');
    }
}