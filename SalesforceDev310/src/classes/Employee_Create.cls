public class Employee_Create {
    public Account acc  {set;get;}
    public Employee_Create(){
        acc =new Account();
    }
    public PageReference create(){
        if(acc.Name==''){
            Apexpages.Message msg =new Apexpages.Message(Apexpages.Severity.Error,'Employee Cannot be created');
            Apexpages.addMessage(msg);
            return null;
        }else{
            insert acc;
            PageReference p=new PageReference('/'+acc.Id);
            return p;
        }
    }
}