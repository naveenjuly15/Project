/* When ever opportunity stagename is modified as closed won Then share the record with student */
trigger Opty_Share_Example on Opportunity (after update) {
    List<OpportunityShare> share =new List<OpportunityShare>();
    Map<Id,Opportunity> oldMap =Trigger.oldMap;
    Map<Id,Opportunity> newMap =Trigger.newMap;
    Set<Id> keys =oldMap.keySet();
    for(Id key :keys){
        Opportunity old=oldMap.get(key);
        Opportunity newOpt=newMap.get(key);
        if(old.stageName!='Closed Won' && newOpt.StageName=='Closed Won'){
            OpportunityShare os =new OpportunityShare();
            os.OpportunityId=key;
            os.UserOrGroupId=newOpt.Manager__c;
            os.OpportunityAccessLevel='Read';
            os.Rowcause='Manual';
            share.add(os);
        }
    }
    insert share;
}