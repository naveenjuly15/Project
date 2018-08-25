public class Queue_Example_2 implements Queueable{
    public void execute(QueueableContext qc){
        List<Contact> contacts =[select id from Contact where createdDate=THIS_WEEK];
        delete contacts;
        Queue_Example_1 qe =new Queue_Example_1();
        Id jobId =System.enqueueJob(qe);
    }
}