/* Attachment : 
 * 1. It is a standard object
 * 2. This will store the files related to any of the sobject
 * 3. Fields 
 * 	  a. ParentId : id of the record ,to which this attachment should be added
 *    b. body	  : body of the attachment 
 *    c. Name	  : Name of the attachment.
 * 
 * 	 
 * BinaryAttachment : 
 * 1. It is a pre-defined apex class.
 * 2. This class is defined under the InboundEmail
 * 3. This class contains the information about files what we recevied in the email
 * 4. Attribues : 
 * 		fileName : Name of the file received
 * 		body	 : body of the file 
 * 		headers  : This will specify the header properties 
 * 				 : Content-type 
 * 				   Name 
 * 		mimeTypeSubType : Type of the file : text/html ,image/png
 * 		
 */
public class Inbound_Email_Example implements Messaging.InboundEmailHandler {
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env){
        Messaging.InboundEmailResult result =new Messaging.InboundEmailResult();
        try{
            Contact con=[select id from Contact where email=:email.fromAddress];
            Case c=new Case();
            c.Subject=email.fromAddress;
            c.Priority='Normal';
            c.Status='New';
            c.Origin='Email';
            c.description=email.plainTextBody;
            insert c;
            /* List of files  what we received  in the email */
            Messaging.InboundEmail.BinaryAttachment[] files =email.binaryAttachments;
            List<Attachment> attachments=new List<Attachment>();
            /* Take one by one file from the list and create attachments record */
            for(Messaging.InboundEmail.BinaryAttachment f :files){
                Attachment a =new Attachment();
                a.body=f.body;
                a.name=f.fileName;
                System.debug('Header:'+f.headers);
                System.debug('Mim Type:'+f.mimeTypeSubType);
                a.ParentId=c.Id;
                attachments.add(a);
            }
            insert attachments;
            result.success=true;
        }catch(Exception e){
            result.success=false;
        }
        return result;
    }
}