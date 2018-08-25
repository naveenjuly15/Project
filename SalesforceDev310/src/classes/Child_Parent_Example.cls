public class Child_Parent_Example {
    public List<Contact> contacts {set;get;}
    public Child_Parent_Example(){
        contacts =[select LastName,FirstName,Phone ,Account.Name,Account.Phone,Company__r.Name,Company__r.Phone from Contact];
    }
}