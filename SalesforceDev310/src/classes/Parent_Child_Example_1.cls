public class Parent_Child_Example_1 {
    public List<Account> accounts {Set;get;}
    public Parent_Child_Example_1(){
        accounts =[select id,Name,Phone,Industry ,(select LastName,firstName from Contacts),(select Name,stagename from opportunities) from Account];
    }
}