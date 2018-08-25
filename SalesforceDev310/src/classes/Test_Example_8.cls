@isTest
public class Test_Example_8 {
	@isTest(seeAllData=true)
    static void testMe(){
     	Example_8 e =new Example_8();
        e.resetData();
        List<Account> accounts =[select id,rating,industry from Account];
        for(Account a: accounts){
            if(a.industry=='Banking'){
                System.assertEquals('Hot',a.rating);
            } else{
                System.assertEquals('Warm',a.rating);
            }
        }
    }
}