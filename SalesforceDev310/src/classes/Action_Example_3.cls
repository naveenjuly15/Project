public class Action_Example_3 {
    public String name 		{set;get;}
    public String city 		{set;get;}
    public String result 	{set;get;}
    public void call(){
        result='Name:'+name+' :City :'+city;
    }
}