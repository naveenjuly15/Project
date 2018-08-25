/*   where <FieldName>[Operator]<value>
 *   where name='Banking'
 *   where age__C < 20 
 *   where annualRevenue >40000
 *   where closeDate=TODAY
 * 
*   where <FieldName>[Operator]<value> [AND |OR] <FieldName>[Operator]<Value>
 */

public class SOQL_Where_Example {
    public List<Account> accounts {set;get;}
    public SOQL_Where_Example(){
        accounts =[select id,name,phone,industry ,rating from Account];
    }
    public void energyData(){
        accounts=[select id ,name,phone,industry ,rating from Account where industry='Energy'];
    }
    public void hotRecords(){
        accounts=[select id,name,phone,industry,rating from Account where rating!='Hot'];
    }
    public void annualLess(){
         accounts=[select id,name,phone,industry,rating from Account where annualRevenue<500000];
    }
    //fetch all the accounts whose rating is warm and industry is Energy
    public void ratingIndustry(){
        accounts=[select id,name,phone,industry,rating from Account where rating='Warm' and industry='Energy'];
    }
    // fetch all the accounts whose rating is hot or warm 
    public void rating(){
        accounts=[select id,name,phone,industry,rating from Account where rating='Hot' or rating='Warm'];
    }
}