global class State_Example_1 implements Database.Batchable<sobject>,Database.Stateful,Schedulable{
    global Integer count=0;
    global Static Integer size=0;
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id,name from Account');
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        for(Account acc: scope){
            count=count+1;
            size=size+1;
        }
    }
    global void finish(Database.BatchableContext bc){
      /*  Account acc =new Account();
         acc.Name='Count:'+count+'size:'+size;
         insert acc;
      */
    }
    public void execute(SchedulableContext sc){
        State_Example_1 se =new State_Example_1();
        Id jobId=Database.executeBatch(se,200);
    }
}