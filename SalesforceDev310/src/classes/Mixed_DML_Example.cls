public class Mixed_DML_Example {
	
    public static void callMe(){
        
            Profile p = [SELECT Id FROM Profile WHERE Name='Student'];
            UserRole r = [SELECT Id FROM UserRole WHERE Name='COO'];
            User u = new User(alias = 'jsmith', email='jsm@ate.com', 
                emailencodingkey='UTF-8', lastname='Smith', 
                languagelocalekey='en_US', 
                localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
                timezonesidkey='America/Los_Angeles', 
                username='jssddd@acme.com');
            	insert u;
          		show();
    }
    @future
    public static void show(){
          Account a = new Account(name='Acme');
           insert a;
    }
}