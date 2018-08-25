public class Schedule_Example_1 implements Schedulable{
    public void execute(SchedulableContext sc){
        	List<Account> accounts =[select id,name from Account where createdDate=TODAY];
        	delete accounts;
    }
}