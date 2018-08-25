public class Outbound_Email {
    public Outbound_Email(){
       /* Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        String[] toadd=new String[]{'abc@xyz.com'};
        String[] tocc=new String[]{'satish@gmail.com'};
        msg.setToAddresses(toadd);
        msg.setBccAddresses(toadd);
        msg.setCcAddresses(tocc);
        msg.setSubject('Test Mail');
        msg.setPlainTextBody('This is a test mail from apex');
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
		*/
    }
    public void callMe(){
        Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        List<String> toadd=new List<String>{'abc@xyz.com'};
        msg.setToAddresses(toadd);
        msg.setSubject('Test Mail');
        String body='<h2> Dear Customer<br/> This is a test email from saelsforce <br/><br/>';
        body=body+'Thanks<br/>Sales Team</h2>';
        msg.setHtmlBody(body);
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);                  
    }
    
}