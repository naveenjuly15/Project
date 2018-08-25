public class Example_3 {
	public String industry ;
    public String type;
    public Date closeDate;
    public void setData(){
        if(industry=='Banking'){
            type='New Customer';
            closeDate=System.today();
        }else{
            type='Existing Customer';
            closeDate=System.today()+15;
        }
    }
}