@isTest
public class Test_Example_7 {
	@isTest(seeAllData=true)
    static void testMe(){
        Example_7 se =new Example_7();
        se.invoke();
        List<Opportunity> optyList =[select id,closeDate from Opportunity where stageName='Prospecting'];
        for(Opportunity op : optyList){
            System.assertEquals(System.today(),op.closeDate);
        }
    }
}