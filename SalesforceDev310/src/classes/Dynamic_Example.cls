public class Dynamic_Example {
    public List<SelectOption> options {set;get;}
    public List<String> selected 	  {set;get;}
    public List<Account> accounts 	  {set;get;}
    public String query				  {set;get;}
    public Dynamic_Example(){
        options =new List<SelectOption>();
List<String> fields =new List<String>{'Name','Phone','Industry','Rating','Ownership','AnnualRevenue','Active__c'};
            SelectOption n=new selectOption('none','-None-');
        	options.add(n);
            for(String s:fields){ 
                SelectOption op=new SelectOption(s,s);
                options.add(op);
            }
    } 
    public void getData(){
        query='select id';
        for(String s:selected){
            if(s!='none'){
                query=query+','+s;
            }
        }
        query=query+' from Account';
        accounts=Database.query(query);
    }
}