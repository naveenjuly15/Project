public class Account_Line_Items {
    public List<Account_Wrapper> accounts {set;get;}
    public List<Account> selected		  {set;get;}
    public Boolean flag					  {Set;get;}
    public Account_Line_Items(){
        accounts =new List<Account_Wrapper>();
		add();
        add();
        add();
    }
    public void add(){
        Account_Wrapper aw =new Account_Wrapper();
        aw.acc=new Account();
        accounts.add(aw);
    }
    public void change(){
        if(flag ==true){
            for(Account_Wrapper aw: accounts){
                aw.flag=true;
            }
        }else{
            for(Account_Wrapper aw:accounts){
                aw.flag=false;
            }
        }
    }
    public void getData(){
        selected =new List<Account>();
        for(Account_Wrapper aw : accounts){
            if(aw.flag ==true){
                selected.add(aw.acc);
            }
        }
    }
}