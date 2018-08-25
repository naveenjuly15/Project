public class Inbound_Example_1 implements Messaging.InboundEmailHandler{
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env){
        Messaging.InboundEmailResult result =new Messaging.InboundEmailResult();
        try{
            String toadd=email.fromAddress;
            Contact cont=[select id from contact where email=:toadd];
            Case c=new Case();
            c.Subject=email.subject;
            c.Priority='Normal';
            c.status='New';
            c.Origin='Email';
            c.contactId=cont.Id;
            c.Description=email.plainTextBody;
            insert c;
            result.success=true;
        }catch(Exception e){
            result.success=false;
        }
        return result;
    }
	
}