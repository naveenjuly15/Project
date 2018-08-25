trigger opty_Trigger on Opportunity (before insert,after insert, after update) {
    if(Trigger.isBefore && Trigger.isInsert){
        Opty_Trigger_Handler.beforeInsert(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isInsert){
        Opty_Trigger_Handler.afterInsert(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.IsUpdate){
        Opty_Trigger_Handler.afterUpdate(Trigger.oldMap,Trigger.newMap);
    }   
}