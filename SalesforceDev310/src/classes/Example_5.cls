public class Example_5 {
	public String name ;
    public String industry;
    public Account acc;
    public void create(){
  		acc =new Account();
        acc.Name=name;
        acc.industry=industry;
        insert acc;
    }
    public void invoke(){
        Contact con=new Contact();
        con.LastName='Testing';
        con.FirstName='Satish';
        con.accountId=acc.Id;
        insert con;
    }
}