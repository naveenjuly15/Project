trigger Account_Submit on Account (after insert) {
    for(Account a: Trigger.new){
        if(a.type=='Prospect'){
            Approval.ProcessSubmitRequest request =new Approval.ProcessSubmitRequest();
            request.setObjectId(a.Id);
            request.setProcessDefinitionNameOrId('CorporateApproval');
            request.setSubmitterId(UserInfo.getUserId());
            List<Id> userids= new List<Id>{a.Manager__c};
            request.setNextApproverIds(userIds);
            request.setComments('This is Dynamic Approval');
            Approval.ProcessResult result = Approval.process(request);
         }
    }
}