public class Example_8 {
    public void resetData(){
        List<Account> accounts =[select id ,industry,rating from Account];
        for(Account a: accounts){
            if(a.industry=='Banking'){
                a.rating='Hot';
            }else{
                a.rating='Warm';
            }
        }
        update accounts;
    }
}