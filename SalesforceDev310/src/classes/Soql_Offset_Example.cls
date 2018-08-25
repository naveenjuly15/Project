public class Soql_Offset_Example {
    // Offset : This will specify from which position we want to take the records
    // Maximum value of offset is 2000
    public List<Account> accounts  {set;get;}
    public Soql_Offset_Example(){
        accounts =[select id,name,phone ,industry from Account offset 10];
    }
}