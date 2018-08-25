public class MyClass {
	@InvocableMethod(label='Testing')
    public static void create(List<Id> accountIds){
        Opportunity op=new Opportunity();
        op.Name='Tsting';
        op.AccountId=accountIds[0];
        op.closedate=System.today()+15;
        op.stageName='Propecting';
        insert op;
    }
}