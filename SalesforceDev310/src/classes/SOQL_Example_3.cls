public class SOQL_Example_3 {
    public List<Case> cases {set;get;}
    public SOQL_Example_3(){
        String query='select subject,status,origin,priority from Case';
        cases =Database.query(query);
    }
}