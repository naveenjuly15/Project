public class Opty_Trigger_Handler {
    public static void beforeInsert(List<Opportunity> optyList){
        for(Opportunity op: optyList){
            op.StageName='Prospect';
            op.CloseDate=System.today()+30;
            op.Type='New Customer';
            op.NextStep='Contact Manager';
        }
    }
    public static void afterInsert(List<Opportunity> optyList){
        User u=[select id from User where firstname='wilson'];
        List<OpportunityTeamMember> teams =new List<OpportunityTeamMember>();
        for(Opportunity op:optyList){
        	OpportunityTeamMember otm=new OpportunityTeamMember();
        	otm.opportunityId=op.Id;
            otm.UserId=u.Id;
            otm.TeamMemberRole='Account Manager';
            otm.OpportunityAccessLevel='Read';
            teams.add(otm);
    	}
      insert teams;
    }
    public static void afterUpdate(Map<Id,Opportunity> oldMap,Map<Id,Opportunity> newMap){
        User u =[select id from User where alias='slive'];
        Set<Id> keys =oldMap.keySet();
        List<OpportunityShare> share =new List<OpportunityShare>();
        for(Id key : keys){
            Opportunity old =oldMap.get(key);
            Opportunity newOpt=newMap.get(key);
            if(old.stageName!='Closed Won' && newopt.stageName=='Closed Won'){
                OpportunityShare os =new OpportunityShare();
                os.OpportunityId=key;
                os.RowCause='Manual';
                os.userOrGroupId=u.Id;
                os.OpportunityAccessLevel='Read';
                share.add(os);
            }
        }
        insert share;
    }
}