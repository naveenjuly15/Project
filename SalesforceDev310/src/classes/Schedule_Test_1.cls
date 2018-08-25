public class Schedule_Test_1 implements Schedulable{
    public void execute(SchedulableContext sc){
        List<Account> accounts =[select id from Account where createdDate=TODAY];
        delete accounts;
    }
}