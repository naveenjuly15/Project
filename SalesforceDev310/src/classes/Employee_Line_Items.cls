public class Employee_Line_Items {
    public Employee emp 			{set;get;}
    public List<Employee> employees {set;get;}
    public Boolean flag1			{set;get;}
    public Boolean flag2			{set;get;}
    public Boolean flag3			{set;get;}
    public Employee_Line_Items(){
        flag2=false;
        flag3=true;
        employees =new List<Employee>();
    }
    public void add(){
       flag1=true;
       emp=new Employee();
       flag2=true;
       flag3=false;
    }
    public void submit(){
        employees.add(emp);
        flag1=false;
        flag2=false;
        flag3=true;
    }
}