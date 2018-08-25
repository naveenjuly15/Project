public class SOQL_Example_6 {
    public Map<String,List<String>> objectMap {set;get;}
    public List<SelectOption> objects 		  {set;get;}
    public String selected  				  {Set;get;}
    public List<Sobject> result				  {set;get;}
    public SOQL_Example_6(){
        objectMap=new Map<String,List<String>>();
        List<String> accFields =new List<String>{'Name','Phone','Industry'};
        List<String> conFields =new List<String>{'LastName','FirstName','Phone'};
        List<String> optyFields=new List<String>{'Name','StageName','CloseDate'};
        objectMap.put('Account',accFields);
        objectMap.put('Contact',conFields);
        objectMap.put('Opportunity',optyFields);
        Set<String> keys =objectMap.keySet(); // Account,contact,opportunity
        SelectOption n=new SelectOption('none','-None-');
        objects.add(n);
        for(String s:keys){
            SelectOption op=new SelectOption(s,s);
            objects.add(op);
        }
    }
}