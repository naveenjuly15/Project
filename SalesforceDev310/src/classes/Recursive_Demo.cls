public class Recursive_Demo {
	public Static Boolean flag=true;
    public static void callMe(){
        if(flag==true){
            flag=false;
            Account acc =new Account();
    		acc.Name='Testing';
    		insert acc;
        }
    }
}