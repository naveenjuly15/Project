public class Account_Handler {
    public static void beforeInsert(List<Account> accounts){
        for(Account a :accounts){
            if(a.industry=='Banking'){
                a.Rating='Hot';
                a.Ownership='Public';
                a.Type='Prospect';
                a.Active__c='No';
            }else{
                a.Rating='Warm';
                a.Ownership='Private';
                a.Active__c='Yes';
            }
        }
    }
    public static void afterInsert(List<Account> accounts){
        List<Opportunity> optyList =new List<Opportunity>();
        for(Account a: accounts){
            Opportunity op=new Opportunity();
            op.Name=a.Name;
            op.AccountId=a.id;
            op.StageName='Prospect';
            op.closeDate=System.today()+15;
            optyList.add(op);
        }
        insert optyList;
    }
    public static void beforeDelete(List<Account> accounts){
        List<Account> accs=[select id,Name,(select lastname from Contacts) from Account where id in:accounts];
        for(Account a: accs){
            if(a.contacts.size()>0){
                a.addError('You cannot delete account which has contacts');
            }
        }
    }
}