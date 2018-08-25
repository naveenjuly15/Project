public class Account_Example {
    public Account  acc  {set;get;}
    public Contact  con  {set;get;}
    public Account_Example(){
        acc =new Account();
        con =new Contact();
    }
    public PageReference save(){
        insert acc;
        con.accountId=acc.Id;  // Name of field: Account : 
        // Note : if lookup/master detail field is created by the salesforce then 
        //  Id should be added to field Nmae 
        //  FieldName		Lookupto		
        //  Owner			User		ownerId
        //  CreatedBy		User		CreatedById
        //  LastModified	User		lastModifiedById
        insert con;
        PageReference p=new PageReference('/'+acc.Id);
        return p;
    }
}