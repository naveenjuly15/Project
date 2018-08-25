public class List_Example_1 {
    public List<SelectOption> options {set;get;}
   /* public String name 				  {set;get;}*/
    public String selected 			  {set;get;}
    public List_Example_1(){
        options =new List<SelectOption>();
        List<String> cities =new List<String>{'Hyd','Ban','Che'};
        /* Create none option */
        SelectOption op1 =new SelectOption('none','-None-');
        options.add(op1);
        for(String s:cities){
            /* Create new Options based on the city name in 's' */
            SelectOption op=new SelectOption(s,s);
            options.add(op);
        }
    }
}