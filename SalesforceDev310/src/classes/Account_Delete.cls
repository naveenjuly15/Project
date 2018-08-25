public class Account_Delete {
    public List<Account> accounts {set;get;}
    public Account_Delete(Apexpages.StandardSetController controller){
        List<String> fields =new List<String>{'Name','Phone','Industry','Rating','Type'};
            controller.addFields(fields);
        accounts =(List<Account>)controller.getSelected();
    }
    public PageReference deleteData(){
        Database.delete(accounts,false);
        PageReference p=new PageReference('/001');
        return p;
    }
}