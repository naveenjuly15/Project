public class Student_Form {
    public String name 			{Set;get;}
    public Integer age 			{set;get;}
    public String city 			{set;get;}
    public String gender		{Set;get;}
    public String address   	{set;get;}
    public String[] languages	{set;get;}
    public Student_Form(){
        languages=new String[4];
    }
    
}