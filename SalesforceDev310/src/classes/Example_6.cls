public class Example_6 {
    public void setData(){
        List<Account> accounts =[select id ,rating from Account where industry='Banking'];
        for(Account a: accounts){
            a.rating='Warm';
        }
        update accounts;
    }
    public void clearData(){
        List<Account> accounts=[select id from Account where createdDate=TODAY];
        delete accounts;
    }
}