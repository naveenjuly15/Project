public class Schedule_Example_2 implements Schedulable{
    public void execute(SchedulableContext sc){
        List<Account> accounts =[select id,rating from Account where industry='Energy'];
        for(Account a: accounts){
            a.rating='Hot';
        }
        update accounts;
    }
}