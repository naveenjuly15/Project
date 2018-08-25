/* Offset : 
 * This will specify from which position we want to fetch the data from the resultSet
 * Maximum value of offset is 2000
 *In case if we want to limit and offset together we have to specify limit follwed by offset.
*/

public class Offset_Example {
    public List<Account> accounts {set;get;}
    public Offset_Example(){
        accounts =[select id,name,phone ,industry from Account];
    }
    public void setData(){
        accounts =[select Id,Name,Phone ,Industry from Account offset 10];
    }
    public void invoke(){
        Integer size=20;
        accounts =[select Id,Name,Phone,Industry from Account offset :size];
    }
    public void callMe(){
        accounts =[select Id,Name,Phone,Industry from Account  limit 5 offset 5];
    }
    public void invokeData(){
         Integer size=10;
         accounts =[select Id,Name,Phone,Industry from Account  limit:size  offset:size];
    }
}