public class Account_Create {
    public String name 			{set;get;}
    public String phone			{set;get;}
    public  String industry 	{set;get;}
    public Account acc		    {set;get;}
    public Account_Create(){
        acc=new Account();
    }
    public PageReference create(){
        upsert acc myId__c;
        PageReference p=new PageReference('/'+acc.Id);
        return p;
    }
    
}