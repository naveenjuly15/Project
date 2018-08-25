public class Intrest_Calc {
    public Decimal amount {set;get;}
    public Decimal rate   {set;get;}
    public Decimal intrest{set;get;}
    public Decimal years  {set;get;}
    public void calculate(){
        intrest=(amount*rate*years)/100;
    }
    public void reset(){
        amount=null;
        rate=null;
        intrest=null;
        years=null;
    }
}