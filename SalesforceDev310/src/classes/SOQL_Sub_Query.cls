public class SOQL_Sub_Query {
    public List<Contact> contacts 		{set;get;}
    public List<Opportunity> optyList 	{set;get;}
    public SOQL_Sub_Query(){
        contacts =[select id,lastname,firstname,phone from Contact where AccountId in (select id  from Account where industry='Energy' )];
    }
}