public class Governing_Example {
    public void call(){
        List<Account> accounts =[select id from Account];
        List<Contact> contacts=[select id from Contact ];
        for(Integer i=1;i<=50;i++){
            List<Opportunity> optyList =[select id from Opportunity];
        }
        invoke();
    }
    public void invoke(){
        List<Account> accounts =[select id from Account];
        List<Contact> contacts=[select id from Contact];
        for(Integer i=1;i<=60;i++){
            List<Case> cases =[select id from Case];
        }
    }
    public void dmlCall(){
        for(Integer i=1;i<=100;i++){
            Account acc=new Account();
            acc.Name='TCS';
            acc.Phone='123';
            insert acc;
        } 
        callMe();
    }
    public void callMe(){
        for(Integer i=1;i<=55;i++){
            Contact con=new Contact();
            con.LastName='Myla';
            con.FirstName='Satish';
            insert con;
        }
    }
    public void dml_records(){
        List<Account> accounts =new List<Account>();
        for(Integer i=1;i<=5000;i++){
           Account acc=new Account();
           acc.Name='Testing';
           acc.Phone='1234';
           accounts.add(acc);
        }
        insert accounts; // 5000
        update accounts; // 5000
        delete accounts; //5000
    }
}