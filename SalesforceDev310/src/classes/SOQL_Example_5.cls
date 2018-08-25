public class SOQL_Example_5 {
    public List<Account> accounts {set;get;}
    public SOQL_Example_5(){
        accounts =[select Name,Phone,Industry,Rating from Account ];
    }
    public void setLimit(){
        accounts=[select name,Phone,Industry,Rating from Account limit 5];
    }
   /* public void invoke(){
        // : variableName
        Integer size=10;
        accounts =[select Name,Phone,Industry,Rating from Account limit :size];
    } */
}