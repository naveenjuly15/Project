/* If you want to compare any string value or String foramt we use Like keyword 
 *  Name Like 'S%' ==> Any name starting with s 
 *  Name like '%s' ===> Any name ending with s
 *  Name like '%s%'===> Any name that contains the s
 *  Name like 's%s'===> Any name starting with s and ending s
 *  Name like '_s_s%'==> Any name whose second character and fourth character is s
 * % means any 
 * - : one characters
 */
public class SOQL_LIKE_Example {
    public List<Account> accounts {set;get;}
    public String searchText      {set;get;}
    public SOQL_LIKE_Example(){
        accounts =[select id,name,phone,industry,rating from Account where name like '%s%'];
    }
    public void search(){
       String query='select id,name,phone,industry,rating from Account where name like \'';
       query=query+'%'+searchText+'%\'';
       accounts =Database.query(query);
    } 
}