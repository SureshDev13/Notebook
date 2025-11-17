public class ProductInfo {
    
    integer productCode, productStock = 10, productAmount, Stock;
    string productName;

    public void billingProduct(string Name, integer code, integer amount)
    {
        productName = Name;
        productCode = code;
        productAmount = amount;
        system.debug('#Product Name ----->'+productName+ '----------#Product Amount--->'+productAmount);
        productStock = this.productStock-1;
    }
    public void displayProduct()
    {
       
       system.debug('Product Name ------ '+productName); 
       system.debug('Stock ------ '+productStock);
    }
    
    public void reOrderProduct(integer Stock)
    {
        this.productStock = Stock;
        system.debug('Stock ------  '+this.productStock);
        
    }
}