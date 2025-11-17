/*************************************************************************
@Name: List Of products
@author: Suresh
@Date: 05 June 2025
@Description: 
***************************************************************************/

public class ListProduct {
    // Private class-level variables
    private String code;
    private String name;
    private Decimal price;
    private Decimal discountPercent;
    private Integer stock;

    // Static list to store all products
    public static List<ListProduct> productList = new List<ListProduct>();

    // Constructor
    public ListProduct(String code, String name, Decimal price, Decimal discountPercent, Integer stock) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.discountPercent = discountPercent;
        this.stock = stock;
    }

    //Billing function
    public static void billProduct(String productCode, Integer quantity) {
        for (ListProduct p : productList) {
            if (p.code == productCode) {
                if (p.stock >= quantity) {
                    p.stock -= quantity;
                    Decimal total = p.price * quantity;
                    Decimal discountAmount = total * (p.discountPercent / 100);
                    Decimal finalAmount = total - discountAmount;
                    displayProductBill(p.name, quantity, total, discountAmount, finalAmount);
                } else {
                    System.debug('Insufficient stock for ' + p.name);
                }
                return;
            }
        }
        System.debug('Product not found');
    }


    public static void displayProductBill(String name, Integer quantity, Decimal total, Decimal discountAmount, Decimal finalAmount) {
        System.debug('--- BILL ---');
        System.debug('Product:    ' + name);
        System.debug('Quantity:    ' + quantity);
        System.debug('Total: ----- ₹' + total);
        System.debug('Discount: ------ ₹' + discountAmount);
        System.debug('Payable: ------- ₹' + finalAmount);
    }

    // Search by product code
    public static void searchByCode(String productCode) {
        for (ListProduct p : productList) {
            if (p.code == productCode) {
                System.debug('Product Found: ' + p.name + ', Stock: ' + p.stock);
                return;
            }
        }
        System.debug('Product with code ' + productCode + ' not found.');
    }

    // Show products with stock < 20
    public static void showReorderProducts() {
        System.debug('--- Reorder Products (Stock < 20) ---');
        for (ListProduct p : productList) {
            if (p.stock < 20) {
                System.debug('Product: ' + p.name + ', Stock: ' + p.stock);
            }
        }
    }
}


/***
ListProduct.productList.add(new ListProduct('P101', 'Monitor', 15000, 10, 25));
ListProduct.productList.add(new ListProduct('P102', 'Mouse', 500, 5, 10));
ListProduct.productList.add(new ListProduct('P103', 'Keyboard', 1200, 0, 5));

// Billing
ListProduct.billProduct('P101', 2);

// Search
ListProduct.searchByCode('P102');

// Reorder
ListProduct.showReorderProducts();

public class ListProduct {
    // ... your variables and constructor ...

    public static void addProduct(String code, String name, Decimal price, Decimal discountPercent, Integer stock) {
        productList.add(new ListProduct(code, name, price, discountPercent, stock));
    }
}

ListProduct.addProduct('P101', 'Monitor', 15000, 10, 25);
ListProduct.addProduct('P102', 'Mouse', 500, 5, 10);
ListProduct.addProduct('P103', 'Keyboard', 1200, 0, 5);



*****/