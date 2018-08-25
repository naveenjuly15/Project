@isTest
public class Test_Example_11 {
	@isTest
    static void testMe(){
        Account acc =new Account();
        acc.Name='Testing';
        insert acc;
        Account a=[select id ,rating,ownership from Account where id=:acc.Id];
        System.assertEquals('Hot',a.rating);
        System.assertEquals('Private',a.Ownership);
    }
}