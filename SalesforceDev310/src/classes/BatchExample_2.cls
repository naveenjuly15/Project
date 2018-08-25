global class BatchExample_2 implements Database.Batchable<Sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='select id,stagename from Opportunity where createdDate=THIS_MONTH';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Opportunity> scope){
        for(Opportunity op :scope){
            op.stageName='Closed Won';
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc){
        Id jobId=bc.getJobId();
        AsyncApexJob job=[select id ,status,jobType,TotalJobItems from AsyncApexJob where Id=:jobId];
        Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        String[] toadd=new String[]{'salesforcebatch300@gmail.com'};
        msg.setToAddresses(toadd);
        msg.setSubject('Batch Operation Status');
        String body='Dear Manager, <br/>  Batch operations completed';
        body=body+'<br/> Job Type :'+job.JobType;
        body=body+'<br/> TotalJobItems:'+job.TotalJobItems;
        body=body+'<br/> Status:'+job.status;
        msg.setHtmlBody(body);
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
}