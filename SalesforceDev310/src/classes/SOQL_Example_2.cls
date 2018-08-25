public class SOQL_Example_2 {
    public List<Contact> contacts {set;get;}
    public SOQL_Example_2(){
        contacts =[select LastName,FirstName,Phone,Email from Contact];
    }
}