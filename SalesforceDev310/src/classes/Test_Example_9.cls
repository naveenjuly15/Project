@isTest
public class Test_Example_9 {
	@isTest
    static void testMe(){
        Account acc =new Account();
        acc.Name='Testing';
        acc.Phone='2344';
        insert acc;
        Batch_Test_Example be =new Batch_Test_Example();
        Test.startTest();
        	Id jobId=Database.executeBatch(be,5);
        Test.stopTest();
        Account a=[select id ,rating from Account where id=:acc.Id];
        System.assertEquals('Warm',a.rating);
    }
}