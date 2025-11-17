/*************************************************************************
@Name: SuperMarket Class
@author: Suresh
@Date: 04 June 2025
@Description: SuperMarketClass child class is created
***************************************************************************/
public class SuperMarketClass {
    private List<ProductVirtual> productList = new List<ProductVirtual>();
    private Map<String, List<ProductVirtual>> productMap = new Map<String, List<ProductVirtual>>();

    // Add multiple products and set map by code
    public void addProducts(List<ProductVirtual> products) {
        for (ProductVirtual p : products) {
            productList.add(p);
            //system.debug(productList);

            if (!productMap.containsKey(p.code)) {
                productMap.put(p.code, new List<ProductVirtual>());
            }
            productMap.get(p.code).add(p);
            
        }//system.debug(productMap);
    }

    // Display all products
    public void displayStock() {
        System.debug('--- Stock Details ---');
        for (ProductVirtual p : productList) {
            p.display();
        }
    }

    // Billing based on code and quantity
    public void billProduct(String code, Integer quantity) {
        if (productMap.containsKey(code)) {
            ProductVirtual p = productMap.get(code)[0];
            if (p.stock >= quantity) {
                Decimal total = p.getDiscountedPrice() * quantity;
                p.stock -= quantity;
                System.debug('Billed: ' + p.name + '  ||Price  ' + p.price + ' x ' + quantity + ' | Total: ₹' + total);
            } else {
                System.debug('Not enough stock for: ' + p.name);
            }
        } else {
            System.debug('Product code not found.');
        }
    }

    // Reorder products with stock below threshold(minimum stock)
    public void reorderProducts(Integer threshold) {
        System.debug('--- Products to Reorder ---');
        for (ProductVirtual p : productList) {
            if (p.stock <= threshold) {
                System.debug(p.name + ' | Current Stock: ' + p.stock);
            }else {
                system.debug('sufficient Stock');
            }
        }
    }

}