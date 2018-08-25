public class SOQL_Example_4 {
    public Map<Id,Account> accounts {set;get;}
    public SOQL_Example_4(){
        accounts =new Map<Id,Account>([select id,name,phone,industry from Account]);
    }
}