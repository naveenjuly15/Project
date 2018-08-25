@isTest
public class Test_Example_6 {
	@isTest(seeAllData=true)
    public static void callMe(){
     	Example_6 e =new Example_6();
        e.setData();
        List<Account> accounts =[select id ,rating from Account where industry='Banking'];
        for(Account a :accounts){
            System.assertEquals('Warm',a.rating);
        }
        e.clearData();
      Integer count =[select count() from Account where createdDate=TODAY];
      System.assertEquals(0,count); 
    }
}