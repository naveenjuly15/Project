public class Product_Info {
    public String prodName   {set;get;}
    public Integer quantity  {set;get;}
    public Decimal price	 {Set;get;}
    public Decimal total     {set;get;}
    public Decimal discount  {set;get;}
    public Product_Info(){
        prodName='Dell';
        quantity=10;
        price=10000;
    }
    /* We can invoke only those methods which doesnt have parameters in the VF page */
    public void calculate(){
        total=price*quantity;
        discount=total*0.10;
    }
}