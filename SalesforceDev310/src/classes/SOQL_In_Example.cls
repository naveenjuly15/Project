public class SOQL_In_Example {
    public List<Account> accounts {set;get;}
    public SOQL_In_Example(){
        accounts =[select id,name,phone,industry,rating from Account];
    }
    public void searchRating(){
         accounts =[select id,name,phone,industry,rating from Account where rating in ('Hot','Warm') order by Name limit 3];
    }
    public void searchIndustry(){
         accounts =[select id,name,phone,industry,rating from Account where industry in ('Banking','Energy','Education') offset 2];
    }
    
}