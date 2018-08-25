public class Transfer_Data {
    public String name  {set;get;}
    public String phone {set;get;}
    public String email {set;get;}
    public PageReference submit(){
        PageReference p=new PageReference('/apex/Student_Detail');
        return p;
    }
    public PageReference editPage(){
        PageReference p=new PageReference('/apex/Student_Edit');
        return p;
    }
}