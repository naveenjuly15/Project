public class Custom_Example {
    public List<Account> accounts {set;get;}
    public List<Contact> contacts {set;get;}
    public List<String> accFields {set;get;}
    public List<String> conFields {set;get;}
    public Custom_Example(){
        accFields =new List<String>{'Name','Phone','Rating'};
        conFields =new List<String>{'LastName','FirstName','Phone'};
        accounts =[select id ,Name,Phone,Rating from Account limit 5];
        contacts=[select id,lastname,firstname,phone from Contact limit 5];
    }
}