public class Example_4 {
	public String rating ;
    public String ownership;
    public String leadSource;
    public void callMe(){
        if(leadSource =='Web'){
            rating='Hot';
            ownership='Public';
        }else{
            rating='Warm';
            ownership='Private';
        }
    }
}