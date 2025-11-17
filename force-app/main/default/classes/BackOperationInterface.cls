/*************************************************************************
@Name: Interface for BankOperation
@author: Suresh
@Date: 04 June 2025
@Description: Abstract class for bank operation deposit and withdrawal
***************************************************************************/
public interface BackOperationInterface {
    void performOperation(Decimal amount);
    void generateStatement();
    void displayInfo();
}

/**
BackOperationInterface depositService = new DepositeInterface('Freak', 1000);
depositService.displayInfo();
depositService.performOperation(500);
depositService.generateStatement();

BackOperationInterface WithdrawService = new WithdrawInterface('Freak', 1000);
WithdrawService.displayInfo();
WithdrawService.performOperation(500);
WithdrawService.generateStatement();

*****/