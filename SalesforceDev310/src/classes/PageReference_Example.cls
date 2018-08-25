public class PageReference_Example {
    public String selected	{set;get;}
    public PageReference invoke(){
        PageReference p;
        if(selected =='Student'){
            p=new PageReference('/apex/Student_Form');
        }else{
            if(selected =='Employee'){
                p=new PageReference('/apex/Employee_Form');
            }
        }
        return p;
    }
}