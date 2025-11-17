/*************************************************************************
@Name: Product Virtual Class
@author: Suresh
@Date: 04 June 2025
@Description: Virtual class for product getting code, Name, Price, Stock, Discount
              SuperMarketClass child class is created
***************************************************************************/

public virtual class ProductVirtual {
    public String code{ get; set; } 
    public String name { get; set; }
    public Decimal price { get; set; }
    public Integer stock { get; set; }
    public Decimal discount { get; set; }

    public ProductVirtual(String code, String name, Decimal price, Integer stock, Decimal discount) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.discount = discount;
    }

    public virtual void display() {
        System.debug('Code: ' + code + ', Name: ' + name + ', Price: ' + price +
                     ', Stock: ' + stock + ', Discount: ' + discount + '%');
    }

    public Decimal getDiscountedPrice() {
        return price - (price * discount / 100);
    }
}