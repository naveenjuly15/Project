public class Queue_Example_1 implements Queueable {
    public void execute(QueueableContext qc){
        List<Account> accounts =[select id from Account where createdDate=TODAY];
        delete accounts;
    }
}