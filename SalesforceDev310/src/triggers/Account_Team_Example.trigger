trigger Account_Team_Example on Account (after insert) {
    User u=[select id from User where alias='slive'];
    List<AccountTeamMember> teams =new List<AccountTeamMember>();
    for(Account a: Trigger.new){
        if(a.AnnualRevenue > 5000000){
            AccountTeamMember atm=new AccountTeamMember();
            /* Id of the account on which you want to create AccountTeammember */
            atm.accountId=a.id;
            /* Id of the user who you want to make as teammember */
            atm.UserId=u.Id;
            /* TeamMember Role */
            atm.TeamMemberRole='Account Manager';
            atm.AccountAccessLevel='Read';
            teams.add(atm);
        }
    }
    insert teams;
}