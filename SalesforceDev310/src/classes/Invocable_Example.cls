public class Invocable_Example {
	@InvocableMethod
    public static void call(List<Id> accIds){
        List<Account> accounts =[select id from Account where Id=:accIds];
        List<Opportunity> optyList=new List<Opportunity>();
        for(Account a: accountS){
            Opportunity op=new Opportunity();
            op.Name=a.Name;
            op.stageName='Closed Won';
            op.closeDate=System.today()+15;
            op.accountId=a.id;
            optyList.add(op);
        }
        insert optyList;
    }
}