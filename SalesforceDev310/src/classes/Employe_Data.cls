public class Employe_Data {
    public String name     {set;get;}
    public Decimal salary  {set;get;}
    public Decimal exp     {set;get;}
    public String city;
    public String place;
    public String getPlace(){
        place='LBNagar';
        return place;
    }
    public String getCity(){
        city='Hyd';
        return city;
    }
    public Employe_Data (){
        name='Satish Myla';
        salary=10000;
        exp=10;
        city='Banglore';
    }
    public void call(){
        place='SRNagar';
    }
}