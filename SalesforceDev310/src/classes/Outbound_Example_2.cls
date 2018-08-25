public class Outbound_Example_2 {
 /*  1. You can only send email template to Lead ,Contact,User
  *  2. SetTargetobjectId() : This method will take Id of the user ,contact,Lead  to whom you want to send 
  * 						  a email template.
  *  3. setWhatId()  : This method will take Id of the record whoes data you want to use in the email Template .
  * 				 : Note whatId is required only if targetObjectId is contactId
  *  4. setTemplateId() : This method will take id of the template which you want to send as body of the email.
  * 
  */
    public void callMe(){
        Contact con=[select id ,accountId from Contact where phone='9876'];
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        EmailTemplate et =[select id from EmailTemplate where name='Customer_Template'];
        msg.setTemplateId(et.id); 
        msg.setTargetObjectId(con.id);
        msg.setWhatId(con.accountId);
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
    public void massCall(){
        Map<Id,Contact> contacts =new Map<Id,Contact>([select id from Contact where phone='9876']);
        EmailTemplate et =[select id from EmailTemplate where name='Customer_Template'];
        Messaging.MassEmailMessage msg =new Messaging.MassEmailMessage();
        Set<Id> keys =contacts.keySet();
        List<Id> contactIds =new List<Id>(keys);
        msg.setTargetObjectIds(contactIds);
        msg.setTemplateId(et.Id);
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
}