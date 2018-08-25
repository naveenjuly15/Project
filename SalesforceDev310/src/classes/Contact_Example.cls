public class Contact_Example {
    public Contact con {set;get;}
    public Contact_Example(Apexpages.StandardController controller){
        List<String> fields =new List<String>{'LastName','FirstName','Phone','Email'};
            controller.addFields(fields);
        con =(Contact)controller.getRecord();  
    }
    public PageReference save(){
        insert con;
        Opportunity op =new Opportunity();
        op.Name='Testing';
        op.closedate=System.today()+10;
        op.stageName='Closed won';
        insert op;
        PageReference p=new PageReference('/'+con.Id);
        return p;
    }
}