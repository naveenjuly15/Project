public class View_State_Example {
    public List<Account> accounts 						{set;get;}
    public Blob body									{set;get;}
    public Apexpages.StandardSetController controller   {set;get;}
    public List<Account> getAccs(){
        List<Account> accounts =(List<Account>)controller.getRecords();
        return accounts;
    }
    public View_State_Example(){
        accounts =[select id ,Name,Phone from Account ];
        controller=new Apexpages.StandardSetController(accounts);
        controller.setPageSize(5);
    }
    public void call(){
        body=null;
    }
}