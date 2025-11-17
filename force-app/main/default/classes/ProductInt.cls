public class ProductInt implements ProductInterface {
    // Private class-level variables
    private String code;
    private String name;
    private Decimal price;
    private Decimal discountPercent;
    private Integer stock;

    // Constructor
    public ProductInt(String code, String name, Decimal price, Decimal discountPercent, Integer stock) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.discountPercent = discountPercent;
        this.stock = stock;
    }

    //Billing function
    public void billProduct(Integer quantity) {
        if (quantity <= stock) {
            Decimal total = price * quantity;
            Decimal discountAmount = total * (discountPercent / 100);
            Decimal finalAmount = total - discountAmount;
            stock -= quantity;
             displayBillingInfo(quantity, total, discountAmount, finalAmount);
        } else {
            System.debug('Insufficient stock for billing.');
        }
    }

    //Search by code and display product details
    public void searchProduct(String searchCode) {
        if (this.code == searchCode) {
            System.debug('Product Found: ' + name + ', Stock: ' + stock);
        } else {
            System.debug('Product code not matched.');
        }
    }

    //Display reorder info
    public void displayReorderInfo() {
        if (stock < 20) {
            System.debug('Reorder Required for: ' + name + ' | Current Stock: ' + stock);
        } else {
            System.debug('Stock sufficient for: ' + name);
        }
    }
    
    Public void displayBillingInfo(integer quantity,  Decimal total, Decimal discountAmount, Decimal finalAmount){
        System.debug('----- BILLING PRODUCT -----');
            System.debug('Product: ' + name);
            System.debug('Quantity: ' + quantity);
            System.debug('Total: ' + total);
            System.debug('Discount: ' + discountAmount);
            System.debug('Final Amount: ' + finalAmount);
            System.debug('Remaining Stock: ' + stock);
    }
}