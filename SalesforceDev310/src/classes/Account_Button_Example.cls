public class Account_Button_Example {
    public Account acc {set;get;}
    public Account_Button_Example(Apexpages.StandardController controller){
        String[] fields =new String[]{'Name','Phone','Industry','Rating','Type','Ownership'};
            controller.addFields(fields);
        acc =(Account)controller.getRecord();
    }
    public PageReference save(){
        Integer count=[select count() from Account where name=:acc.Name];
        if(count>0){
            Apexpages.Message msg =new Apexpages.Message(Apexpages.Severity.Error,'Duplicate Record Found');
            Apexpages.addMessage(msg);
            return null;
        }else{
            insert acc;
            PageReference p=new PageReference('/'+acc.Id);
            return p;
        }
    }
}