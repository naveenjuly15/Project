trigger Opty_Example on Opportunity (before update) {
    Map<Id,Opportunity> oldMap=Trigger.oldMap;
    Map<Id,Opportunity> newMap =Trigger.newMap;
    Set<Id> keys =oldMap.keySet();
    for(Id k: keys){
        Opportunity old=oldMap.get(k);
        Opportunity newOpt=newMap.get(k);
        if(old.stageName!='Closed won' && newOpt.StageName=='Closed Won'){
            newOpt.closeDate=System.today();
            newOpt.Type='New Customer';
        }
    }
}