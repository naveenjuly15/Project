@isTest
public class Test_Example_4 {
	@isTest
    static void callMe(){
        Example_4 e =new Example_4();
        e.LeadSource='Web';
        e.callMe();
        System.assertEquals('Hot',e.rating);
        System.assertEquals('Public',e.ownership);
        e.LeadSource='Email';
        e.callMe();
        System.assertEquals('Warm',e.rating);
        System.assertEquals('Private',e.ownership);
    }
}