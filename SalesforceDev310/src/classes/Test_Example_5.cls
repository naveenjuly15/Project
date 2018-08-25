@isTest
public class Test_Example_5 {
    testmethod static void testMe(){
        Example_5 e =new Example_5();
        e.Name='Wipro';
        e.Industry='Energy';
        e.create();
        Integer count=[select count() from Account where name=:e.Name and industry=:e.Industry];
        System.assertEquals(count,1);
        e.invoke();
        Integer size=[select count() from Contact where accountId=:e.acc.Id];
        System.assertEquals(size,1);
    }
}