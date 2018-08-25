public class DML_Insert_Example {
    public Account acc {Set;get;}
    public DML_Insert_Example(){
        acc=new Account();
    }
    public PageReference create(){
        Integer count=[select count() from Account where name=:acc.Name];
        if(count>0){
            Apexpages.Message msg =new Apexpages.Message(Apexpages.Severity.Error,'Duplicate Record exists');
            Apexpages.addMessage(msg);
            return null;
        }else{
            insert acc;
            PageReference p=new PageReference('/'+acc.Id);
            return p;
        }
    }
}