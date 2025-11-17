/*********************************
@NAME           Arithmetic Calculation  
@Author         Suresh
@DATE           16/05/2025
@Description    To perform arithmetic Calculation
**********************************/
public class arithmeticCalculation {
    public static void calculate(Integer num1, Integer num2, String operation) {
        Decimal result;
        system.debug('\nFirst Number ---->'+num1+ '\nSecond Number ----> '+num2+ 'Arithmetic Operation ----> '+operation);
        
        switch on operation {
            when '+' {
                result = num1 + num2;
                System.debug('Addition Result: ' + result);
            }
            when '-' {
                result = num1 - num2;
                System.debug('Subtraction Result: ' + result);
            }
            when '*' {
                result = num1 * num2;
                System.debug('Multiplication Result: ' + result);
            }
            when '/' {
                if (num2 != 0) {
                    result = Decimal.valueOf(num1) / Decimal.valueOf(num2);
                    System.debug('Division Result: ' + result);
                } else {
                    System.debug('Error: Division by zero is not allowed.');
                }
            }
            when else {
                System.debug('Invalid operation provided.');
            }
        }
    }
}

/*
arithmeticCalculation.calculate(5,3,'+'); 
*/