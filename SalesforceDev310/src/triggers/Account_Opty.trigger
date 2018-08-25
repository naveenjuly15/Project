trigger Account_Opty on Account (after insert) {
    List<Opportunity> optyList =new List<Opportunity>();
    // List of new record which are successfully inserted in the dataabse are in trigger.new
    for(Account a: Trigger.New){
        if(a.industry=='Banking' && a.rating=='Hot'){
           Opportunity op=new Opportunity();
           op.Name=a.Name;
           op.Type='New Customer';
           op.stageName='Prospecting';
           op.closeDate=System.today()+15;
           op.accountId=a.Id; //a.Id will available after account is created successfully
           optyList.add(op);
        }
    }
    insert optyList;
}