@isTest
public class Test_Example_3 {
	@isTest
    static void testMe(){
        Example_3 e =new Example_3();
        e.industry='Energy';
        e.setData();
        System.assertEquals('Existing Customer',e.type);
        System.assertEquals(System.today()+15,e.closeDate);
        e.industry='Banking';
        e.setData();
        System.assertEquals('New Customer',e.type);
        System.assertEquals(System.today(),e.closeDate);
    }
}