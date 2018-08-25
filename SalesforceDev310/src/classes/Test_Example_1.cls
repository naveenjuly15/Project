@isTest
public class Test_Example_1 {
	@isTest
    static void testMe(){
        Example_1 e =new Example_1();
        e.callMe();
        System.assertEquals('Satish',e.name);
        System.assertEquals('Hyd',e.city);
        e.cancel();
        System.assertEquals('',e.name);
        System.assertEquals('',e.city);
        
    }
}