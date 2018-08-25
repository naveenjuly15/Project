@isTest
public class Test_Example_2 {
	@isTest
    static void testMe(){
        Example_2 e =new Example_2();
        e.invoke();
        System.assertEquals('Banking',e.industry);
        System.assertEquals('Closed Won',e.stage);
        e.callMe();
        System.assertEquals('',e.industry);
        System.assertEquals('',e.stage);
    }
}