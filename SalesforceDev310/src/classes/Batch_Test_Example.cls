global class Batch_Test_Example implements Database.Batchable<sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='Select id,rating from Account where CreatedDate=TODAY';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        for(Account a: scope){
            a.rating='Warm';
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        
    }
}