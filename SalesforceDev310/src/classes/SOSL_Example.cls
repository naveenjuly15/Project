public class SOSL_Example {
    /* ALL FIELDS
* NAME FIELDS
* PHONE FIELDS
* EMAIL FIELDS
*/
    public List<Account> accounts 		{set;get;}
    public List<Contact> contacts 		{set;get;}
    public List<Opportunity> optyList 	{set;get;}
    public SOSL_Example(){
        List<List<Sobject>> result =[FIND 'Genepoint' IN ALL FIELDS Returning Account(Name,Phone),Contact(LastName,FirstName limit 1),Opportunity(Name,StageName where stageName='Closed Won')];
        accounts=(List<Account>)result[0];
        contacts=(List<Contact>)result[1];
        optyList=(List<Opportunity>)result[2];
    }
}