/* order by fieldName ASC/DESC 
 * order by FieldName ASC/DESC ,FieldName ASC/DESC 
 */

public class SOQL_OrderBy_Example {
    public List<Account> accounts {set;get;}
    public SOQL_OrderBy_Example(){
        accounts =[select id,Name,Phone,Industry,createdDate,lastmodifiedDate from Account];
    }
    public void sortByName(){
        accounts =[select id,Name,Phone,Industry,createdDate,lastmodifiedDate from Account order by Name ];
    }
    public void sortByNameDesc(){
        accounts =[select id,Name,Phone,Industry,CreatedDate,lastmodifiedDate from Account order by Name DESC];
    }
    public void sortByMultiple(){
        accounts =[select id,Name,Phone,Industry,CreatedDate,lastmodifiedDate from Account order by Name ASC ,Phone DESC];
    }
    public void sortByDate(){
        accounts =[select id,Name,Phone,Industry,createdDate,lastmodifiedDate from Account order by CreatedDate];
    }
    public void lastFive(){
          accounts =[select id,Name,Phone,Industry,createdDate,lastmodifiedDate from Account order by CreatedDate DESC limit 5];
    }
}