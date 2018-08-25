public class Acc_Line_Items {
    public Account acc 			    {set;get;}
    public List<Account> accs       {set;get;}
    public Boolean flag1			{set;get;}
    public Boolean flag2			{set;get;}
    public Boolean flag3			{set;get;}
    public Acc_Line_Items(){
        flag2=false;
        flag3=true;
        accs =new List<Account>();
    }
    public void add(){
       flag1=true;
       acc=new Account();
       flag2=true;
       flag3=false;
    }
    public void submit(){
        accs.add(acc);
        flag1=false;
        flag2=false;
        flag3=true;
    }
}