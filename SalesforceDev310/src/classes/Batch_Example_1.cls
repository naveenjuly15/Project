global class Batch_Example_1 implements Database.Batchable<SObject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query ='select Id,Name,Rating from Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        for(Account a: scope){
            a.Rating='Warm';
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        
    }
}